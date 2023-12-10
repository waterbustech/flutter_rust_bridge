// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 1.82.4.

// ignore_for_file: unused_import, unused_element, duplicate_ignore, invalid_use_of_internal_member

import 'api/minimal.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:ffi' as ffi;
import 'frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated_io.dart';

abstract class RustLibApiImplPlatform extends BaseApiImpl<RustLibWire> {
  RustLibApiImplPlatform({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  @protected
  PlatformPointer cst_encode_DartFn_Inputs__Output_unit(void Function() raw) {
    return cst_encode_DartOpaque(raw);
  }

  @protected
  PlatformPointer cst_encode_DartOpaque(Object raw) {
    return wire.dart_opaque_dart2rust_encode(raw);
  }
}

// Section: wire_class

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names
// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint

/// generated by flutter_rust_bridge
class RustLibWire implements BaseWire {
  factory RustLibWire.fromExternalLibrary(ExternalLibrary lib) =>
      RustLibWire(lib.ffiDynamicLibrary);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  RustLibWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  RustLibWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void frb_initialize_rust(
    int dart_opaque_drop_port,
    int dart_fn_invoke_port,
  ) {
    return _frb_initialize_rust(
      dart_opaque_drop_port,
      dart_fn_invoke_port,
    );
  }

  late final _frb_initialize_rustPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int, ffi.Int)>>(
          'frb_initialize_rust');
  late final _frb_initialize_rust =
      _frb_initialize_rustPtr.asFunction<void Function(int, int)>();

  void wire_minimal_adder(
    int port_,
    ffi.Pointer<ffi.Uint8> ptr_,
    int rust_vec_len_,
    int data_len_,
  ) {
    return _wire_minimal_adder(
      port_,
      ptr_,
      rust_vec_len_,
      data_len_,
    );
  }

  late final _wire_minimal_adderPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<ffi.Uint8>, ffi.Int32,
              ffi.Int32)>>('wire_minimal_adder');
  late final _wire_minimal_adder = _wire_minimal_adderPtr
      .asFunction<void Function(int, ffi.Pointer<ffi.Uint8>, int, int)>();

  void wire_rust_call_dart_simple(
    int port_,
    ffi.Pointer<ffi.Void> callback,
  ) {
    return _wire_rust_call_dart_simple(
      port_,
      callback,
    );
  }

  late final _wire_rust_call_dart_simplePtr = _lookup<
          ffi
          .NativeFunction<ffi.Void Function(ffi.Int64, ffi.Pointer<ffi.Void>)>>(
      'wire_rust_call_dart_simple');
  late final _wire_rust_call_dart_simple = _wire_rust_call_dart_simplePtr
      .asFunction<void Function(int, ffi.Pointer<ffi.Void>)>();

  ffi.Pointer<ffi.Void> dart_opaque_dart2rust_encode(
    Object handle,
  ) {
    return _dart_opaque_dart2rust_encode(
      handle,
    );
  }

  late final _dart_opaque_dart2rust_encodePtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Handle)>>(
          'dart_opaque_dart2rust_encode');
  late final _dart_opaque_dart2rust_encode = _dart_opaque_dart2rust_encodePtr
      .asFunction<ffi.Pointer<ffi.Void> Function(Object)>();

  int dummy_method_to_enforce_bundling() {
    return _dummy_method_to_enforce_bundling();
  }

  late final _dummy_method_to_enforce_bundlingPtr =
      _lookup<ffi.NativeFunction<ffi.Int64 Function()>>(
          'dummy_method_to_enforce_bundling');
  late final _dummy_method_to_enforce_bundling =
      _dummy_method_to_enforce_bundlingPtr.asFunction<int Function()>();
}
