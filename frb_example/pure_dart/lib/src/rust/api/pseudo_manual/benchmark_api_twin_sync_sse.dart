// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 1.82.4.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

void benchmarkVoidTwinSyncSse({dynamic hint}) =>
    RustLib.instance.api.benchmarkVoidTwinSyncSse(hint: hint);

int benchmarkInputBytesTwinSyncSse({required Uint8List bytes, dynamic hint}) =>
    RustLib.instance.api
        .benchmarkInputBytesTwinSyncSse(bytes: bytes, hint: hint);

Uint8List benchmarkOutputBytesTwinSyncSse({required int size, dynamic hint}) =>
    RustLib.instance.api
        .benchmarkOutputBytesTwinSyncSse(size: size, hint: hint);

void benchmarkBinaryTreeInputTwinSyncSse(
        {required BenchmarkBinaryTreeTwinSyncSse tree, dynamic hint}) =>
    RustLib.instance.api
        .benchmarkBinaryTreeInputTwinSyncSse(tree: tree, hint: hint);

BenchmarkBinaryTreeTwinSyncSse benchmarkBinaryTreeOutputTwinSyncSse(
        {required int depth, dynamic hint}) =>
    RustLib.instance.api
        .benchmarkBinaryTreeOutputTwinSyncSse(depth: depth, hint: hint);

void benchmarkBlobInputTwinSyncSse(
        {required BenchmarkBlobTwinSyncSse blob, dynamic hint}) =>
    RustLib.instance.api.benchmarkBlobInputTwinSyncSse(blob: blob, hint: hint);

BenchmarkBlobTwinSyncSse benchmarkBlobOutputTwinSyncSse(
        {required int size, dynamic hint}) =>
    RustLib.instance.api.benchmarkBlobOutputTwinSyncSse(size: size, hint: hint);

class BenchmarkBinaryTreeTwinSyncSse {
  final String name;
  final BenchmarkBinaryTreeTwinSyncSse? left;
  final BenchmarkBinaryTreeTwinSyncSse? right;

  const BenchmarkBinaryTreeTwinSyncSse({
    required this.name,
    this.left,
    this.right,
  });

  @override
  int get hashCode => name.hashCode ^ left.hashCode ^ right.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BenchmarkBinaryTreeTwinSyncSse &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          left == other.left &&
          right == other.right;
}

class BenchmarkBlobTwinSyncSse {
  final Uint8List first;
  final Uint8List second;
  final Uint8List third;

  const BenchmarkBlobTwinSyncSse({
    required this.first,
    required this.second,
    required this.third,
  });

  @override
  int get hashCode => first.hashCode ^ second.hashCode ^ third.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BenchmarkBlobTwinSyncSse &&
          runtimeType == other.runtimeType &&
          first == other.first &&
          second == other.second &&
          third == other.third;
}
