// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 1.82.4.

// Section: imports

use super::*;
use flutter_rust_bridge::for_generated::byteorder::{NativeEndian, ReadBytesExt, WriteBytesExt};
use flutter_rust_bridge::for_generated::transform_result_dco;
use flutter_rust_bridge::for_generated::wasm_bindgen;
use flutter_rust_bridge::for_generated::wasm_bindgen::prelude::*;
use flutter_rust_bridge::{Handler, IntoIntoDart};

// Section: dart2rust

impl<T> CstDecode<Option<T>> for flutter_rust_bridge::for_generated::wasm_bindgen::JsValue
where
    JsValue: CstDecode<T>,
{
    fn cst_decode(self) -> Option<T> {
        (!self.is_null() && !self.is_undefined()).then(|| self.cst_decode())
    }
}
impl CstDecode<flutter_rust_bridge::DartOpaque>
    for flutter_rust_bridge::for_generated::wasm_bindgen::JsValue
{
    fn cst_decode(self) -> flutter_rust_bridge::DartOpaque {
        unsafe {
            flutter_rust_bridge::for_generated::cst_decode_dart_opaque(
                &*FLUTTER_RUST_BRIDGE_HANDLER,
                self,
            )
        }
    }
}
impl CstDecode<i32> for flutter_rust_bridge::for_generated::wasm_bindgen::JsValue {
    fn cst_decode(self) -> i32 {
        self.unchecked_into_f64() as _
    }
}
impl CstDecode<usize> for flutter_rust_bridge::for_generated::wasm_bindgen::JsValue {
    fn cst_decode(self) -> usize {
        self.unchecked_into_f64() as _
    }
}

#[wasm_bindgen]
pub fn frb_initialize_rust(
    dart_opaque_drop_port: flutter_rust_bridge::for_generated::MessagePort,
    dart_fn_invoke_port: flutter_rust_bridge::for_generated::MessagePort,
) {
    flutter_rust_bridge::for_generated::handler_initialize(
        &*FLUTTER_RUST_BRIDGE_HANDLER,
        dart_opaque_drop_port,
        dart_fn_invoke_port,
    )
}

#[wasm_bindgen]
pub fn wire_minimal_adder(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    ptr_: flutter_rust_bridge::for_generated::PlatformGeneralizedUint8ListPtr,
    rust_vec_len_: i32,
    data_len_: i32,
) {
    wire_minimal_adder_impl(port_, ptr_, rust_vec_len_, data_len_)
}

#[wasm_bindgen]
pub fn wire_rust_call_dart_simple(
    port_: flutter_rust_bridge::for_generated::MessagePort,
    callback: flutter_rust_bridge::for_generated::wasm_bindgen::JsValue,
) {
    wire_rust_call_dart_simple_impl(port_, callback)
}

#[wasm_bindgen]
pub fn dart_opaque_dart2rust_encode(
    handle: flutter_rust_bridge::for_generated::wasm_bindgen::JsValue,
) -> usize {
    unsafe {
        flutter_rust_bridge::for_generated::dart_opaque_dart2rust_encode(
            &*FLUTTER_RUST_BRIDGE_HANDLER,
            handle,
        ) as _
    }
}
