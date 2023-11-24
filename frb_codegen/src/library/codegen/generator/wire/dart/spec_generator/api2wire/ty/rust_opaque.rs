use crate::codegen::generator::acc::Acc;
use crate::codegen::generator::misc::target::Target;
use crate::codegen::generator::wire::dart::spec_generator::api2wire::misc::dart_wire_type_from_rust_wire_type_or_wasm;
use crate::codegen::generator::wire::dart::spec_generator::api2wire::ty::WireDartGeneratorApi2wireTrait;
use crate::codegen::generator::wire::dart::spec_generator::base::*;
use crate::codegen::ir::ty::IrTypeTrait;

impl<'a> WireDartGeneratorApi2wireTrait for RustOpaqueRefWireDartGenerator<'a> {
    fn api2wire_body(&self) -> Acc<Option<String>> {
        Acc {
            io: Some(format!(
                "final ptr = wire.new_{0}();
                _api_fill_to_wire_{0}(raw, ptr);
                return ptr;",
                self.ir.safe_ident(),
            )),
            wasm: Some(
                "// ignore: invalid_use_of_internal_member
                return raw.shareOrMove();"
                    .to_owned(),
            ),
            ..Default::default()
        }
    }

    fn api_fill_to_wire_body(&self) -> Option<String> {
        Some(
            "// ignore: invalid_use_of_internal_member
            wireObj.ptr = apiObj.shareOrMove();"
                .into(),
        )
    }

    fn dart_wire_type(&self, target: Target) -> String {
        dart_wire_type_from_rust_wire_type_or_wasm(self, target, "Object".into())
    }
}
