// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.19.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables

import 'api/minimal.dart';
import 'dart:async';
import 'dart:convert';
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
  void dart_fn_deliver_output(int call_id, PlatformGeneralizedUint8ListPtr ptr_,
      int rust_vec_len_, int data_len_) {
    return wire.dart_fn_deliver_output(call_id, ptr_, rust_vec_len_, data_len_);
  }

  @protected
  void wire_init_app(NativePortType port_) {
    return wire.wire_init_app(port_);
  }

  @protected
  void wire_minimal_adder(NativePortType port_, int a, int b) {
    return wire.wire_minimal_adder(port_, a, b);
  }

  @protected
  void dart_fn_deliver_output(int call_id, PlatformGeneralizedUint8ListPtr ptr_,
      int rust_vec_len_, int data_len_) {
    return wire.dart_fn_deliver_output(call_id, ptr_, rust_vec_len_, data_len_);
  }

  @protected
  void wire_init_app(NativePortType port_) {
    return wire.wire_init_app(port_);
  }

  @protected
  void wire_minimal_adder(NativePortType port_, int a, int b) {
    return wire.wire_minimal_adder(port_, a, b);
  }

  @protected
  int dco_decode_i_32(dynamic raw);

  @protected
  void dco_decode_unit(dynamic raw);

  @protected
  int sse_decode_i_32(SseDeserializer deserializer);

  @protected
  void sse_decode_unit(SseDeserializer deserializer);

  @protected
  bool sse_decode_bool(SseDeserializer deserializer);

  @protected
  int cst_encode_i_32(int raw);

  @protected
  void cst_encode_unit(void raw);

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_unit(void self, SseSerializer serializer);

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer);
}

// Section: wire_class

class RustLibWire implements BaseWire {
  RustLibWire.fromExternalLibrary(ExternalLibrary lib);
}
