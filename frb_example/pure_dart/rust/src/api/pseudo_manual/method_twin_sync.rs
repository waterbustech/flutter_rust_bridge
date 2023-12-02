// NOTE: This file is mimicking how a human developer writes tests,
// and is auto-generated from `method.rs` by frb_internal
// Please do not modify manually, but modify the origin and re-run frb_internal generator

use flutter_rust_bridge::StreamSink;

#[derive(Debug, Clone)]
pub struct Log2TwinSync {
    pub key: u32,
    pub value: String,
}

pub struct ConcatenateWithTwinSync {
    pub a: String,
}

impl ConcatenateWithTwinSync {
    #[flutter_rust_bridge::frb(sync)]
    pub fn new_twin_sync(a: String) -> ConcatenateWithTwinSync {
        ConcatenateWithTwinSync { a }
    }

    #[flutter_rust_bridge::frb(sync)]
    pub fn concatenate_twin_sync(&self, b: String) -> String {
        format!("{}{b}", self.a)
    }

    #[flutter_rust_bridge::frb(sync)]
    pub fn concatenate_static_twin_sync(a: String, b: String) -> String {
        format!("{a}{b}")
    }

    #[flutter_rust_bridge::frb(sync)]
    pub fn handle_some_stream_sink_twin_sync(
        &self,
        key: u32,
        max: u32,
        sink: StreamSink<Log2TwinSync>,
    ) {
        let a = self.a.clone();
        std::thread::spawn(move || {
            for i in 0..max {
                sink.add(Log2TwinSync {
                    key,
                    value: format!("{a}{i}"),
                });
            }
            sink.close();
        });
    }

    #[flutter_rust_bridge::frb(sync)]
    pub fn handle_some_stream_sink_at_1_twin_sync(&self, sink: StreamSink<u32>) {
        std::thread::spawn(move || {
            for i in 0..5 {
                sink.add(i);
            }
            sink.close();
        });
    }

    #[flutter_rust_bridge::frb(sync)]
    pub fn handle_some_static_stream_sink_twin_sync(
        key: u32,
        max: u32,
        sink: StreamSink<Log2TwinSync>,
    ) {
        std::thread::spawn(move || {
            for i in 0..max {
                sink.add(Log2TwinSync {
                    key,
                    value: i.to_string(),
                });
            }
            sink.close();
        });
    }

    #[flutter_rust_bridge::frb(sync)]
    pub fn handle_some_static_stream_sink_single_arg_twin_sync(sink: StreamSink<u32>) {
        std::thread::spawn(move || {
            for i in 0..5 {
                sink.add(i);
            }
            sink.close();
        });
    }
}

pub struct SumWithTwinSync {
    pub x: u32,
}

impl SumWithTwinSync {
    #[flutter_rust_bridge::frb(sync)]
    pub fn sum_twin_sync(&self, y: u32, z: u32) -> u32 {
        self.x + y + z
    }
}

#[flutter_rust_bridge::frb(sync)]
pub fn get_sum_struct_twin_sync() -> SumWithTwinSync {
    SumWithTwinSync { x: 21 }
}

#[flutter_rust_bridge::frb(sync)]
pub fn get_sum_array_twin_sync(a: u32, b: u32, c: u32) -> [SumWithTwinSync; 3] {
    [
        SumWithTwinSync { x: a },
        SumWithTwinSync { x: b },
        SumWithTwinSync { x: c },
    ]
}
