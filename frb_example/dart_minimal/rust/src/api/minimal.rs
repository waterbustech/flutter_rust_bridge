use flutter_rust_bridge::frb;
use crate::frb_generated::RustAutoOpaqueMoi;

#[frb(init)]
pub fn init_app() {
    flutter_rust_bridge::setup_default_user_utils();
}

pub fn minimal_adder(a: i32, b: i32) -> i32 {
    a + b
}

#[frb(opaque)]
pub struct MyStruct;

pub fn f(a: RustAutoOpaqueMoi<MyStruct>) {
    todo!()
}
