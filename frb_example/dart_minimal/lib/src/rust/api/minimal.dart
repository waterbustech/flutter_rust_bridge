// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.40.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These functions are ignored (category: IgnoreBecauseSelfTypeNotAllowed): `method_twin_normal`

Future<int> minimalAdder({required int a, required int b}) =>
    RustLib.instance.api.crateApiMinimalMinimalAdder(a: a, b: b);

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<MyImplTraitWithSelfTwinNormal>>
abstract class MyImplTraitWithSelfTwinNormal
    implements RustOpaqueInterface, MyTraitWithSelfTwinNormal {
  Future<void> methodTwinNormal(
      {required MyImplTraitWithSelfTwinNormal another});
}
