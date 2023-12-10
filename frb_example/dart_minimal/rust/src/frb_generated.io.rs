// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 1.82.4.

// Section: imports

use super::*;
use flutter_rust_bridge::for_generated::byteorder::{NativeEndian, ReadBytesExt, WriteBytesExt};
use flutter_rust_bridge::for_generated::transform_result_dco;
use flutter_rust_bridge::{Handler, IntoIntoDart};

// Section: dart2rust

impl CstDecode<flutter_rust_bridge::DartOpaque> for *const std::ffi::c_void {
    fn cst_decode(self) -> flutter_rust_bridge::DartOpaque {
        unsafe { flutter_rust_bridge::for_generated::cst_decode_dart_opaque(self) }
    }
}
pub trait NewWithNullPtr {
    fn new_with_null_ptr() -> Self;
}

impl<T> NewWithNullPtr for *mut T {
    fn new_with_null_ptr() -> Self {
        std::ptr::null_mut()
    }
}

#[no_mangle]
pub extern "C" fn frb_initialize_rust(
    dart_opaque_drop_port: flutter_rust_bridge::for_generated::MessagePort,
    dart_fn_invoke_port: flutter_rust_bridge::for_generated::MessagePort,
) {
    flutter_rust_bridge::for_generated::handler_initialize(
        &*FLUTTER_RUST_BRIDGE_HANDLER,
        dart_opaque_drop_port,
        dart_fn_invoke_port,
    )
}

#[no_mangle]
pub extern "C" fn wire_minimal_adder(
    port_: i64,
    ptr_: *mut u8,
    rust_vec_len_: i32,
    data_len_: i32,
) {
    wire_minimal_adder_impl(port_, ptr_, rust_vec_len_, data_len_)
}

#[no_mangle]
pub extern "C" fn wire_rust_call_dart_simple(port_: i64, callback: *const std::ffi::c_void) {
    wire_rust_call_dart_simple_impl(port_, callback)
}

#[no_mangle]
pub extern "C" fn dart_opaque_dart2rust_encode(
    handle: flutter_rust_bridge::for_generated::dart_sys::Dart_Handle,
) -> *const std::ffi::c_void {
    unsafe {
        flutter_rust_bridge::for_generated::dart_opaque_dart2rust_encode(
            &*FLUTTER_RUST_BRIDGE_HANDLER,
            handle,
        ) as _
    }
}
