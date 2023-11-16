use crate::codegen::ir::func::IrFuncMode;
use crate::codegen::ir::ty::delegate::IrTypeDelegate;
use crate::codegen::ir::ty::primitive::IrTypePrimitive;
use crate::codegen::ir::ty::unencodable::IrTypeUnencodable;
use crate::codegen::ir::ty::IrType;
use crate::codegen::ir::ty::IrType::{EnumRef, StructRef};
use crate::codegen::parser::function_parser::{
    type_to_string, FunctionParser, FunctionPartialInfo,
};
use crate::codegen::parser::type_parser::unencodable::{splay_segments, ArgsRefs};
use crate::codegen::parser::ParserResult;
use anyhow::Context;
use syn::*;

impl<'a, 'b> FunctionParser<'a, 'b> {
    pub(super) fn parse_fn_output(&mut self, sig: &Signature) -> ParserResult<FunctionPartialInfo> {
        // TODO
        if matches!(mode, Some(IrFuncMode::Stream {..}) if output_ok != IrType::Primitive(IrTypePrimitive::Unit))
        {
            return Err(super::error::Error::NoStreamSinkAndOutput(func_name.into()));
        }

        Ok(match &sig.output {
            ReturnType::Type(_, ty) => self.parse_fn_output_type(ty)?,
            ReturnType::Default => FunctionPartialInfo {
                ok_output: Some(IrType::Primitive(IrTypePrimitive::Unit)),
                ..Default::default()
            },
        })
    }

    fn parse_fn_output_type(&mut self, ty: &Type) -> ParserResult<FunctionPartialInfo> {
        let ir = self.type_parser.parse_type(ty)?;

        if let IrType::Unencodable(IrTypeUnencodable { segments, .. }) = ir {
            match splay_segments(&segments).last() {
                Some(("Result", Some(ArgsRefs::Generic(args)))) => {
                    return parse_fn_output_type_result(args);
                }
                _ => {}
            }
        }

        Ok(FunctionPartialInfo {
            ok_output: Some(self.type_parser.parse_type(ty)?),
            ..Default::default()
        })
    }
}

fn parse_fn_output_type_result(args: &[IrType]) -> ParserResult<FunctionPartialInfo> {
    let ok = args.first().unwrap();

    let is_anyhow = args.len() == 1
        || args.iter().any(|x| match x {
            IrType::Unencodable(IrTypeUnencodable { string, .. }) => string == "anyhow :: Error",
            _ => false,
        });
    let error = if is_anyhow {
        Some(IrType::Delegate(IrTypeDelegate::Anyhow))
    } else {
        args.last().cloned()
    };

    let error = if let Some(StructRef(mut struct_ref)) = error {
        struct_ref.is_exception = true;
        Some(StructRef(struct_ref))
    } else if let Some(EnumRef(mut enum_ref)) = error {
        enum_ref.is_exception = true;
        Some(EnumRef(enum_ref))
    } else {
        error
    };

    Some(FuncOutput::ResultType {
        ok: ok.clone(),
        error,
    })
}
