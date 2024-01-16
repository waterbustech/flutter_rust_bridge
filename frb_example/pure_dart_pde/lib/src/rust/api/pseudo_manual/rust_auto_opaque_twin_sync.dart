// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.19.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'rust_auto_opaque_twin_rust_async.dart';

void rustAutoOpaqueArgOwnTwinSync(
        {required NonCloneSimpleTwinSync arg,
        required int expect,
        dynamic hint}) =>
    RustLib.instance.api
        .rustAutoOpaqueArgOwnTwinSync(arg: arg, expect: expect, hint: hint);

void rustAutoOpaqueArgBorrowTwinSync(
        {required NonCloneSimpleTwinSync arg,
        required int expect,
        dynamic hint}) =>
    RustLib.instance.api
        .rustAutoOpaqueArgBorrowTwinSync(arg: arg, expect: expect, hint: hint);

void rustAutoOpaqueArgMutBorrowTwinSync(
        {required NonCloneSimpleTwinSync arg,
        required int expect,
        required int adder,
        dynamic hint}) =>
    RustLib.instance.api.rustAutoOpaqueArgMutBorrowTwinSync(
        arg: arg, expect: expect, adder: adder, hint: hint);

NonCloneSimpleTwinSync rustAutoOpaqueReturnOwnTwinSync(
        {required int initial, dynamic hint}) =>
    RustLib.instance.api
        .rustAutoOpaqueReturnOwnTwinSync(initial: initial, hint: hint);

NonCloneSimpleTwinSync rustAutoOpaqueArgOwnAndReturnOwnTwinSync(
        {required NonCloneSimpleTwinSync arg, dynamic hint}) =>
    RustLib.instance.api
        .rustAutoOpaqueArgOwnAndReturnOwnTwinSync(arg: arg, hint: hint);

void rustAutoOpaqueTwoArgsTwinSync(
        {required NonCloneSimpleTwinSync a,
        required NonCloneSimpleTwinSync b,
        dynamic hint}) =>
    RustLib.instance.api.rustAutoOpaqueTwoArgsTwinSync(a: a, b: b, hint: hint);

void rustAutoOpaqueNormalAndOpaqueArgTwinSync(
        {required NonCloneSimpleTwinSync a, required String b, dynamic hint}) =>
    RustLib.instance.api
        .rustAutoOpaqueNormalAndOpaqueArgTwinSync(a: a, b: b, hint: hint);

/// "+" inside the type signature
void rustAutoOpaquePlusSignArgTwinSync(
        {required BoxMyTraitTwinSync arg, dynamic hint}) =>
    RustLib.instance.api
        .rustAutoOpaquePlusSignArgTwinSync(arg: arg, hint: hint);

BoxMyTraitTwinSync rustAutoOpaquePlusSignReturnTwinSync({dynamic hint}) =>
    RustLib.instance.api.rustAutoOpaquePlusSignReturnTwinSync(hint: hint);

void rustAutoOpaqueCallableArgTwinSync(
        {required BoxFnStringString arg, dynamic hint}) =>
    RustLib.instance.api
        .rustAutoOpaqueCallableArgTwinSync(arg: arg, hint: hint);

BoxFnStringString rustAutoOpaqueCallableReturnTwinSync({dynamic hint}) =>
    RustLib.instance.api.rustAutoOpaqueCallableReturnTwinSync(hint: hint);

void rustAutoOpaqueTraitObjectArgOwnTwinSync(
        {required BoxHelloTraitTwinSync arg,
        required String expect,
        dynamic hint}) =>
    RustLib.instance.api.rustAutoOpaqueTraitObjectArgOwnTwinSync(
        arg: arg, expect: expect, hint: hint);

void rustAutoOpaqueTraitObjectArgBorrowTwinSync(
        {required BoxHelloTraitTwinSync arg,
        required String expect,
        dynamic hint}) =>
    RustLib.instance.api.rustAutoOpaqueTraitObjectArgBorrowTwinSync(
        arg: arg, expect: expect, hint: hint);

void rustAutoOpaqueTraitObjectArgMutBorrowTwinSync(
        {required BoxHelloTraitTwinSync arg,
        required String expect,
        dynamic hint}) =>
    RustLib.instance.api.rustAutoOpaqueTraitObjectArgMutBorrowTwinSync(
        arg: arg, expect: expect, hint: hint);

BoxHelloTraitTwinSync rustAutoOpaqueTraitObjectReturnOwnOneTwinSync(
        {dynamic hint}) =>
    RustLib.instance.api
        .rustAutoOpaqueTraitObjectReturnOwnOneTwinSync(hint: hint);

BoxHelloTraitTwinSync rustAutoOpaqueTraitObjectReturnOwnTwoTwinSync(
        {dynamic hint}) =>
    RustLib.instance.api
        .rustAutoOpaqueTraitObjectReturnOwnTwoTwinSync(hint: hint);

void rustAutoOpaqueStructWithGoodAndOpaqueFieldArgOwnTwinSync(
        {required StructWithGoodAndOpaqueFieldTwinSync arg, dynamic hint}) =>
    RustLib.instance.api
        .rustAutoOpaqueStructWithGoodAndOpaqueFieldArgOwnTwinSync(
            arg: arg, hint: hint);

void rustAutoOpaqueStructWithGoodAndOpaqueFieldArgBorrowTwinSync(
        {required StructWithGoodAndOpaqueFieldTwinSync arg, dynamic hint}) =>
    RustLib.instance.api
        .rustAutoOpaqueStructWithGoodAndOpaqueFieldArgBorrowTwinSync(
            arg: arg, hint: hint);

void rustAutoOpaqueStructWithGoodAndOpaqueFieldArgMutBorrowTwinSync(
        {required StructWithGoodAndOpaqueFieldTwinSync arg, dynamic hint}) =>
    RustLib.instance.api
        .rustAutoOpaqueStructWithGoodAndOpaqueFieldArgMutBorrowTwinSync(
            arg: arg, hint: hint);

StructWithGoodAndOpaqueFieldTwinSync
    rustAutoOpaqueStructWithGoodAndOpaqueFieldReturnOwnTwinSync(
            {dynamic hint}) =>
        RustLib.instance.api
            .rustAutoOpaqueStructWithGoodAndOpaqueFieldReturnOwnTwinSync(
                hint: hint);

OpaqueOneTwinSyncOpaqueTwoTwinSync rustAutoOpaqueReturnOpaqueOneAndTwoTwinSync(
        {dynamic hint}) =>
    RustLib.instance.api
        .rustAutoOpaqueReturnOpaqueOneAndTwoTwinSync(hint: hint);

OpaqueTwoTwinSync rustAutoOpaqueReturnOpaqueTwoTwinSync({dynamic hint}) =>
    RustLib.instance.api.rustAutoOpaqueReturnOpaqueTwoTwinSync(hint: hint);

int rustAutoOpaqueBorrowAndMutBorrowTwinSync(
        {required NonCloneSimpleTwinSync borrow,
        required NonCloneSimpleTwinSync mutBorrow,
        dynamic hint}) =>
    RustLib.instance.api.rustAutoOpaqueBorrowAndMutBorrowTwinSync(
        borrow: borrow, mutBorrow: mutBorrow, hint: hint);

int rustAutoOpaqueBorrowAndBorrowTwinSync(
        {required NonCloneSimpleTwinSync a,
        required NonCloneSimpleTwinSync b,
        dynamic hint}) =>
    RustLib.instance.api
        .rustAutoOpaqueBorrowAndBorrowTwinSync(a: a, b: b, hint: hint);

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::rust_async::RwLock<Box<dyn HelloTraitTwinSync>>>
@sealed
class BoxHelloTraitTwinSync extends RustOpaque {
  BoxHelloTraitTwinSync.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  BoxHelloTraitTwinSync.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib
        .instance.api.rust_arc_increment_strong_count_BoxHelloTraitTwinSync,
    rustArcDecrementStrongCount: RustLib
        .instance.api.rust_arc_decrement_strong_count_BoxHelloTraitTwinSync,
    rustArcDecrementStrongCountPtr: RustLib
        .instance.api.rust_arc_decrement_strong_count_BoxHelloTraitTwinSyncPtr,
  );
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::rust_async::RwLock<Box<dyn MyTraitTwinSync + Send + Sync>>>
@sealed
class BoxMyTraitTwinSync extends RustOpaque {
  BoxMyTraitTwinSync.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  BoxMyTraitTwinSync.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_BoxMyTraitTwinSync,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_BoxMyTraitTwinSync,
    rustArcDecrementStrongCountPtr: RustLib
        .instance.api.rust_arc_decrement_strong_count_BoxMyTraitTwinSyncPtr,
  );
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::rust_async::RwLock<NonCloneSimpleTwinSync>>
@sealed
class NonCloneSimpleTwinSync extends RustOpaque {
  NonCloneSimpleTwinSync.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  NonCloneSimpleTwinSync.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib
        .instance.api.rust_arc_increment_strong_count_NonCloneSimpleTwinSync,
    rustArcDecrementStrongCount: RustLib
        .instance.api.rust_arc_decrement_strong_count_NonCloneSimpleTwinSync,
    rustArcDecrementStrongCountPtr: RustLib
        .instance.api.rust_arc_decrement_strong_count_NonCloneSimpleTwinSyncPtr,
  );

  void instanceMethodArgBorrowTwinSync({dynamic hint}) => RustLib.instance.api
          .nonCloneSimpleTwinSyncInstanceMethodArgBorrowTwinSync(
        that: this,
      );

  void instanceMethodArgMutBorrowTwinSync({dynamic hint}) =>
      RustLib.instance.api
          .nonCloneSimpleTwinSyncInstanceMethodArgMutBorrowTwinSync(
        that: this,
      );

  void instanceMethodArgOwnTwinSync({dynamic hint}) =>
      RustLib.instance.api.nonCloneSimpleTwinSyncInstanceMethodArgOwnTwinSync(
        that: this,
      );

  int get instanceMethodGetterTwinSync =>
      RustLib.instance.api.nonCloneSimpleTwinSyncInstanceMethodGetterTwinSync(
        that: this,
      );

  NonCloneSimpleTwinSync instanceMethodReturnOwnTwinSync({dynamic hint}) =>
      RustLib.instance.api
          .nonCloneSimpleTwinSyncInstanceMethodReturnOwnTwinSync(
        that: this,
      );

  /// named constructor
  static NonCloneSimpleTwinSync newCustomNameTwinSync({dynamic hint}) =>
      RustLib.instance.api
          .nonCloneSimpleTwinSyncNewCustomNameTwinSync(hint: hint);

  /// unnamed constructor
  static NonCloneSimpleTwinSync newTwinSync({dynamic hint}) =>
      RustLib.instance.api.nonCloneSimpleTwinSyncNewTwinSync(hint: hint);

  /// constructor with Result
  static NonCloneSimpleTwinSync newWithResultTwinSync({dynamic hint}) =>
      RustLib.instance.api
          .nonCloneSimpleTwinSyncNewWithResultTwinSync(hint: hint);

  static void staticMethodArgBorrowTwinSync(
          {required NonCloneSimpleTwinSync arg, dynamic hint}) =>
      RustLib.instance.api.nonCloneSimpleTwinSyncStaticMethodArgBorrowTwinSync(
          arg: arg, hint: hint);

  static void staticMethodArgMutBorrowTwinSync(
          {required NonCloneSimpleTwinSync arg, dynamic hint}) =>
      RustLib.instance.api
          .nonCloneSimpleTwinSyncStaticMethodArgMutBorrowTwinSync(
              arg: arg, hint: hint);

  static void staticMethodArgOwnTwinSync(
          {required NonCloneSimpleTwinSync arg, dynamic hint}) =>
      RustLib.instance.api.nonCloneSimpleTwinSyncStaticMethodArgOwnTwinSync(
          arg: arg, hint: hint);

  static NonCloneSimpleTwinSync staticMethodReturnOwnTwinSync({dynamic hint}) =>
      RustLib.instance.api
          .nonCloneSimpleTwinSyncStaticMethodReturnOwnTwinSync(hint: hint);
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::rust_async::RwLock<StructWithGoodAndOpaqueFieldTwinSync>>
@sealed
class StructWithGoodAndOpaqueFieldTwinSync extends RustOpaque {
  StructWithGoodAndOpaqueFieldTwinSync.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  StructWithGoodAndOpaqueFieldTwinSync.sseDecode(
      int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api
        .rust_arc_increment_strong_count_StructWithGoodAndOpaqueFieldTwinSync,
    rustArcDecrementStrongCount: RustLib.instance.api
        .rust_arc_decrement_strong_count_StructWithGoodAndOpaqueFieldTwinSync,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_StructWithGoodAndOpaqueFieldTwinSyncPtr,
  );
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::rust_async::RwLock<(crate::api::pseudo_manual::rust_auto_opaque_twin_sync::OpaqueOneTwinSync,crate::api::pseudo_manual::rust_auto_opaque_twin_sync::OpaqueTwoTwinSync,)>>
@sealed
class OpaqueOneTwinSyncOpaqueTwoTwinSync extends RustOpaque {
  OpaqueOneTwinSyncOpaqueTwoTwinSync.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  OpaqueOneTwinSyncOpaqueTwoTwinSync.sseDecode(
      int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api
        .rust_arc_increment_strong_count_OpaqueOneTwinSyncOpaqueTwoTwinSync,
    rustArcDecrementStrongCount: RustLib.instance.api
        .rust_arc_decrement_strong_count_OpaqueOneTwinSyncOpaqueTwoTwinSync,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_OpaqueOneTwinSyncOpaqueTwoTwinSyncPtr,
  );
}

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::rust_async::RwLock<crate::api::pseudo_manual::rust_auto_opaque_twin_sync::OpaqueTwoTwinSync>>
@sealed
class OpaqueTwoTwinSync extends RustOpaque {
  OpaqueTwoTwinSync.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  OpaqueTwoTwinSync.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_OpaqueTwoTwinSync,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_OpaqueTwoTwinSync,
    rustArcDecrementStrongCountPtr: RustLib
        .instance.api.rust_arc_decrement_strong_count_OpaqueTwoTwinSyncPtr,
  );
}
