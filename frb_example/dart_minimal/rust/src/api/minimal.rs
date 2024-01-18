use flutter_rust_bridge::frb;

#[frb(init)]
pub fn init_app() {
    flutter_rust_bridge::setup_default_user_utils();
}

pub fn minimal_adder(a: i32, b: i32) -> i32 {
    a + b
}

#[frb(opaque)]
pub struct MyOpaqueType;

// TODO temp
pub fn my_func(arg: Vec<MyOpaqueType>) -> Vec<MyOpaqueType> {
    vec![]
}

pub fn another_func(arg: &MyOpaqueType) -> MyOpaqueType {
    panic!()
}
