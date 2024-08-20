import 'package:flutter_rust_bridge/src/dart_opaque/_common.dart';
import 'package:flutter_rust_bridge/src/generalized_frb_rust_binding/generalized_frb_rust_binding.dart';
import 'package:flutter_rust_bridge/src/platform_types/platform_types.dart';

/// {@macro flutter_rust_bridge.only_for_generated_code}
PlatformPointer encodeDartOpaque(Object raw, NativePortType dartHandlerPort,
        GeneralizedFrbRustBinding generalizedFrbRustBinding) =>
    encodeDartOpaqueCommon(
        _prepareDartOpaque(raw), dartHandlerPort, generalizedFrbRustBinding);

Object _prepareDartOpaque(Object raw) {
  // #2183
  // if (raw is Function) {
  //   return raw;
  // }
  return raw;
}
