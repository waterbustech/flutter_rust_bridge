// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.20.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

Future<int> minimalAdder({required int a, required int b, dynamic hint}) =>
    RustLib.instance.api.minimalAdder(a: a, b: b, hint: hint);

Stream<Undurchsichtiger> anyhowTest({dynamic hint}) =>
    RustLib.instance.api.anyhowTest(hint: hint);

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::rust_async::RwLock<Undurchsichtiger>>
@sealed
class Undurchsichtiger extends RustOpaque {
  Undurchsichtiger.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  Undurchsichtiger.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_Undurchsichtiger,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_Undurchsichtiger,
    rustArcDecrementStrongCountPtr: RustLib
        .instance.api.rust_arc_decrement_strong_count_UndurchsichtigerPtr,
  );

  Future<Uint8List> read({dynamic hint}) =>
      RustLib.instance.api.undurchsichtigerRead(
        that: this,
      );
}
