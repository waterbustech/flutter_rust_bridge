// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.16.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
part 'exception_twin_rust_async_sse.freezed.dart';

Future<int> funcReturnErrorTwinRustAsyncSse({dynamic hint}) =>
    RustLib.instance.api.funcReturnErrorTwinRustAsyncSse(hint: hint);

Future<int> funcTypeFalliblePanicTwinRustAsyncSse({dynamic hint}) =>
    RustLib.instance.api.funcTypeFalliblePanicTwinRustAsyncSse(hint: hint);

Future<int> funcTypeInfalliblePanicTwinRustAsyncSse({dynamic hint}) =>
    RustLib.instance.api.funcTypeInfalliblePanicTwinRustAsyncSse(hint: hint);

Future<int> customEnumErrorReturnOkTwinRustAsyncSse(
        {required int arg, dynamic hint}) =>
    RustLib.instance.api
        .customEnumErrorReturnOkTwinRustAsyncSse(arg: arg, hint: hint);

Future<void> customEnumErrorPanicTwinRustAsyncSse({dynamic hint}) =>
    RustLib.instance.api.customEnumErrorPanicTwinRustAsyncSse(hint: hint);

Future<int> customEnumErrorReturnErrorTwinRustAsyncSse({dynamic hint}) =>
    RustLib.instance.api.customEnumErrorReturnErrorTwinRustAsyncSse(hint: hint);

Future<void> customNestedErrorReturnErrorTwinRustAsyncSse(
        {required CustomNestedErrorOuterTwinRustAsyncSse arg, dynamic hint}) =>
    RustLib.instance.api
        .customNestedErrorReturnErrorTwinRustAsyncSse(arg: arg, hint: hint);

Future<void> customStructErrorReturnErrorTwinRustAsyncSse(
        {required CustomStructErrorTwinRustAsyncSse arg, dynamic hint}) =>
    RustLib.instance.api
        .customStructErrorReturnErrorTwinRustAsyncSse(arg: arg, hint: hint);

Future<int> returnErrCustomErrorTwinRustAsyncSse({dynamic hint}) =>
    RustLib.instance.api.returnErrCustomErrorTwinRustAsyncSse(hint: hint);

Future<int> returnOkCustomErrorTwinRustAsyncSse({dynamic hint}) =>
    RustLib.instance.api.returnOkCustomErrorTwinRustAsyncSse(hint: hint);

Future<int> returnErrorVariantTwinRustAsyncSse(
        {required int variant, dynamic hint}) =>
    RustLib.instance.api
        .returnErrorVariantTwinRustAsyncSse(variant: variant, hint: hint);

Future<void> returnCustomNestedError1TwinRustAsyncSse({dynamic hint}) =>
    RustLib.instance.api.returnCustomNestedError1TwinRustAsyncSse(hint: hint);

Future<void> returnCustomNestedError1Variant1TwinRustAsyncSse({dynamic hint}) =>
    RustLib.instance.api
        .returnCustomNestedError1Variant1TwinRustAsyncSse(hint: hint);

Future<void> returnCustomNestedError2TwinRustAsyncSse({dynamic hint}) =>
    RustLib.instance.api.returnCustomNestedError2TwinRustAsyncSse(hint: hint);

Future<void> returnCustomStructErrorTwinRustAsyncSse({dynamic hint}) =>
    RustLib.instance.api.returnCustomStructErrorTwinRustAsyncSse(hint: hint);

Future<int> returnCustomStructOkTwinRustAsyncSse({dynamic hint}) =>
    RustLib.instance.api.returnCustomStructOkTwinRustAsyncSse(hint: hint);

Future<void> throwAnyhowTwinRustAsyncSse({dynamic hint}) =>
    RustLib.instance.api.throwAnyhowTwinRustAsyncSse(hint: hint);

Future<void> panicWithCustomResultTwinRustAsyncSse({dynamic hint}) =>
    RustLib.instance.api.panicWithCustomResultTwinRustAsyncSse(hint: hint);

Stream<String> streamSinkThrowAnyhowTwinRustAsyncSse({dynamic hint}) =>
    RustLib.instance.api.streamSinkThrowAnyhowTwinRustAsyncSse(hint: hint);

@freezed
sealed class CustomEnumErrorTwinRustAsyncSse
    with _$CustomEnumErrorTwinRustAsyncSse
    implements FrbException {
  @Implements<FrbBacktracedException>()
  const factory CustomEnumErrorTwinRustAsyncSse.one({
    required String message,
    required String backtrace,
  }) = CustomEnumErrorTwinRustAsyncSse_One;
  @Implements<FrbBacktracedException>()
  const factory CustomEnumErrorTwinRustAsyncSse.two({
    required int message,
    required String backtrace,
  }) = CustomEnumErrorTwinRustAsyncSse_Two;
}

@freezed
sealed class CustomErrorTwinRustAsyncSse
    with _$CustomErrorTwinRustAsyncSse
    implements FrbException {
  @Implements<FrbBacktracedException>()
  const factory CustomErrorTwinRustAsyncSse.error0({
    required String e,
    required String backtrace,
  }) = CustomErrorTwinRustAsyncSse_Error0;
  @Implements<FrbBacktracedException>()
  const factory CustomErrorTwinRustAsyncSse.error1({
    required int e,
    required String backtrace,
  }) = CustomErrorTwinRustAsyncSse_Error1;
}

@freezed
sealed class CustomNestedError1TwinRustAsyncSse
    with _$CustomNestedError1TwinRustAsyncSse
    implements FrbException {
  const factory CustomNestedError1TwinRustAsyncSse.customNested1(
    String field0,
  ) = CustomNestedError1TwinRustAsyncSse_CustomNested1;
  const factory CustomNestedError1TwinRustAsyncSse.errorNested(
    CustomNestedError2TwinRustAsyncSse field0,
  ) = CustomNestedError1TwinRustAsyncSse_ErrorNested;
}

@freezed
sealed class CustomNestedError2TwinRustAsyncSse
    with _$CustomNestedError2TwinRustAsyncSse {
  const factory CustomNestedError2TwinRustAsyncSse.customNested2(
    String field0,
  ) = CustomNestedError2TwinRustAsyncSse_CustomNested2;
  const factory CustomNestedError2TwinRustAsyncSse.customNested2Number(
    int field0,
  ) = CustomNestedError2TwinRustAsyncSse_CustomNested2Number;
}

@freezed
sealed class CustomNestedErrorInnerTwinRustAsyncSse
    with _$CustomNestedErrorInnerTwinRustAsyncSse {
  const factory CustomNestedErrorInnerTwinRustAsyncSse.three(
    String field0,
  ) = CustomNestedErrorInnerTwinRustAsyncSse_Three;
  const factory CustomNestedErrorInnerTwinRustAsyncSse.four(
    int field0,
  ) = CustomNestedErrorInnerTwinRustAsyncSse_Four;
}

@freezed
sealed class CustomNestedErrorOuterTwinRustAsyncSse
    with _$CustomNestedErrorOuterTwinRustAsyncSse {
  const factory CustomNestedErrorOuterTwinRustAsyncSse.one(
    String field0,
  ) = CustomNestedErrorOuterTwinRustAsyncSse_One;
  const factory CustomNestedErrorOuterTwinRustAsyncSse.two(
    CustomNestedErrorInnerTwinRustAsyncSse field0,
  ) = CustomNestedErrorOuterTwinRustAsyncSse_Two;
}

class CustomStructErrorAnotherTwinRustAsyncSse implements FrbException {
  final String message;

  const CustomStructErrorAnotherTwinRustAsyncSse({
    required this.message,
  });

  @override
  int get hashCode => message.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomStructErrorAnotherTwinRustAsyncSse &&
          runtimeType == other.runtimeType &&
          message == other.message;
}

class CustomStructErrorTwinRustAsyncSse {
  final String a;

  const CustomStructErrorTwinRustAsyncSse({
    required this.a,
  });

  @override
  int get hashCode => a.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomStructErrorTwinRustAsyncSse &&
          runtimeType == other.runtimeType &&
          a == other.a;
}

class CustomStructTwinRustAsyncSse {
  final String message;

  const CustomStructTwinRustAsyncSse({
    required this.message,
  });

  static Future<CustomStructTwinRustAsyncSse> newTwinRustAsyncSse(
          {required String message, dynamic hint}) =>
      RustLib.instance.api.customStructTwinRustAsyncSseNewTwinRustAsyncSse(
          message: message, hint: hint);

  Future<void> nonstaticReturnCustomStructErrorTwinRustAsyncSse(
          {dynamic hint}) =>
      RustLib.instance.api
          .customStructTwinRustAsyncSseNonstaticReturnCustomStructErrorTwinRustAsyncSse(
        that: this,
      );

  Future<int> nonstaticReturnCustomStructOkTwinRustAsyncSse({dynamic hint}) =>
      RustLib.instance.api
          .customStructTwinRustAsyncSseNonstaticReturnCustomStructOkTwinRustAsyncSse(
        that: this,
      );

  static Future<void> staticReturnCustomStructErrorTwinRustAsyncSse(
          {dynamic hint}) =>
      RustLib.instance.api
          .customStructTwinRustAsyncSseStaticReturnCustomStructErrorTwinRustAsyncSse(
              hint: hint);

  static Future<int> staticReturnCustomStructOkTwinRustAsyncSse(
          {dynamic hint}) =>
      RustLib.instance.api
          .customStructTwinRustAsyncSseStaticReturnCustomStructOkTwinRustAsyncSse(
              hint: hint);

  @override
  int get hashCode => message.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomStructTwinRustAsyncSse &&
          runtimeType == other.runtimeType &&
          message == other.message;
}

class SomeStructTwinRustAsyncSse {
  final int value;

  const SomeStructTwinRustAsyncSse({
    required this.value,
  });

  static Future<SomeStructTwinRustAsyncSse> newTwinRustAsyncSse(
          {required int value, dynamic hint}) =>
      RustLib.instance.api.someStructTwinRustAsyncSseNewTwinRustAsyncSse(
          value: value, hint: hint);

  Future<int> nonStaticReturnErrCustomErrorTwinRustAsyncSse({dynamic hint}) =>
      RustLib.instance.api
          .someStructTwinRustAsyncSseNonStaticReturnErrCustomErrorTwinRustAsyncSse(
        that: this,
      );

  Future<int> nonStaticReturnOkCustomErrorTwinRustAsyncSse({dynamic hint}) =>
      RustLib.instance.api
          .someStructTwinRustAsyncSseNonStaticReturnOkCustomErrorTwinRustAsyncSse(
        that: this,
      );

  static Future<int> staticReturnErrCustomErrorTwinRustAsyncSse(
          {dynamic hint}) =>
      RustLib.instance.api
          .someStructTwinRustAsyncSseStaticReturnErrCustomErrorTwinRustAsyncSse(
              hint: hint);

  static Future<int> staticReturnOkCustomErrorTwinRustAsyncSse(
          {dynamic hint}) =>
      RustLib.instance.api
          .someStructTwinRustAsyncSseStaticReturnOkCustomErrorTwinRustAsyncSse(
              hint: hint);

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SomeStructTwinRustAsyncSse &&
          runtimeType == other.runtimeType &&
          value == other.value;
}
