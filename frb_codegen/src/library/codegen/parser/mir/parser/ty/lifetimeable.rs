use crate::codegen::ir::mir::ty::delegate::{MirTypeDelegate, MirTypeDelegateLifetimeable};
use crate::codegen::ir::mir::ty::rust_auto_opaque_implicit::MirTypeRustAutoOpaqueImplicit;
use crate::codegen::ir::mir::ty::MirType;
use crate::codegen::parser::mir::parser::lifetime_extractor::LifetimeExtractor;
use crate::codegen::parser::mir::parser::ty::TypeParserWithContext;
use syn::Type;

impl<'a, 'b, 'c> TypeParserWithContext<'a, 'b, 'c> {
    pub(crate) fn parse_maybe_lifetimeable(
        &mut self,
        original: MirTypeRustAutoOpaqueImplicit,
    ) -> anyhow::Result<MirType> {
        let ty: Type = syn::parse_str(&original.raw.string)?;
        let lifetimes = LifetimeExtractor::extract(&ty);

        if !lifetimes.is_empty() {
            return Ok(MirType::Delegate(MirTypeDelegate::Lifetimeable(
                MirTypeDelegateLifetimeable {
                    inner: Box::new(MirType::RustAutoOpaqueImplicit(original)),
                },
            )));
        }

        Ok(MirType::RustAutoOpaqueImplicit(original))
    }
}
