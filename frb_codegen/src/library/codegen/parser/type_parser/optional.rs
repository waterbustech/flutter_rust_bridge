use crate::codegen::ir::ty::delegate::IrTypeDelegate;
use crate::codegen::ir::ty::optional::IrTypeOptional;
use crate::codegen::ir::ty::IrType;
use crate::codegen::ir::ty::IrType::{
    Boxed, DartOpaque, Delegate, Dynamic, EnumRef, GeneralList, Optional, OptionalList, Primitive,
    PrimitiveList, Record, RustOpaque, StructRef, Unencodable,
};
use crate::codegen::parser::type_parser::unencodable::ArgsRefs::Generic;
use crate::codegen::parser::type_parser::unencodable::SplayedSegment;
use crate::codegen::parser::type_parser::TypeParserWithContext;
use anyhow::bail;
use quote::ToTokens;
use syn::TypePath;

impl<'a, 'b, 'c> TypeParserWithContext<'a, 'b, 'c> {
    pub(crate) fn parse_type_path_data_optional(
        &mut self,
        type_path: &TypePath,
        last_segment: &SplayedSegment,
    ) -> anyhow::Result<Option<IrType>> {
        Ok(Some(match last_segment {
            ("Option", Some(Generic([Optional(_)]))) => bail!(
                "Nested optionals without indirection are not supported. {}",
                type_path.to_token_stream()
            ),

            ("Option", Some(Generic([inner]))) => Optional(match inner {
                StructRef(..)
                | EnumRef(..)
                | RustOpaque(..)
                | DartOpaque(..)
                | Primitive(..)
                | Record(..)
                | Delegate(IrTypeDelegate::PrimitiveEnum(..)) => {
                    IrTypeOptional::new_with_boxed_wrapper(inner.clone())
                }
                Delegate(IrTypeDelegate::Time(..)) => {
                    IrTypeOptional::new_with_boxed_wrapper(inner.clone())
                }
                OptionalList(_) | PrimitiveList(_) | GeneralList(_) | Boxed(_) | Dynamic(_)
                | Unencodable(_) | Delegate(_) => IrTypeOptional::new(inner.clone()),
                Optional(_) => unreachable!(),
            }),

            _ => return Ok(None),
        }))
    }
}
