// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.35.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

Future<int> minimalAdder({required int a, required int b, dynamic hint}) =>
    RustLib.instance.api.crateApiMinimalMinimalAdder(a: a, b: b, hint: hint);

Future<void> f({required MyStruct a, dynamic hint}) =>
    RustLib.instance.api.crateApiMinimalF(a: a, hint: hint);

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<MyStruct>>
@sealed
class MyStruct extends RustOpaque {
  MyStruct.dcoDecode(List<dynamic> wire) : super.dcoDecode(wire, _kStaticData);

  MyStruct.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_MyStruct,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_MyStruct,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_MyStructPtr,
  );
}
