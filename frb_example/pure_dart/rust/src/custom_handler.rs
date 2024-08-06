use lazy_static::lazy_static;

// This file tests custom handler

#[cfg(not(target_family = "wasm"))]
lazy_static! {
    pub static ref FLUTTER_RUST_BRIDGE_HANDLER: flutter_rust_bridge::DefaultHandler<flutter_rust_bridge::SimpleThreadPool> =
        { flutter_rust_bridge::DefaultHandler::new_simple(Default::default()) };
}

#[cfg(target_family = "wasm")]
thread_local! {
    pub static THREAD_POOL: flutter_rust_bridge::SimpleThreadPool = Default::default();
}

#[cfg(target_family = "wasm")]
lazy_static! {
    pub static ref FLUTTER_RUST_BRIDGE_HANDLER: flutter_rust_bridge::DefaultHandler<
        &'static std::thread::LocalKey<flutter_rust_bridge::SimpleThreadPool>,
    > = flutter_rust_bridge::DefaultHandler::new_simple(&THREAD_POOL);
}
