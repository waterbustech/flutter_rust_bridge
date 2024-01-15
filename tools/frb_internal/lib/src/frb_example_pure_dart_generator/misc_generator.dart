import 'dart:io';

import 'package:collection/collection.dart';
import 'package:path/path.dart';

Future<void> generateRustMod(Uri dir) async {
  final files = Directory(dir.toFilePath())
      .listSync()
      .map((entity) {
        if (entity is File) {
          final name = basenameWithoutExtension(entity.path);
          if (name == 'mod') return null;
          return name;
        }
        if (entity is Directory) {
          return basename(entity);
        }
        return null;
      })
      .whereNotNull()
      .toList()
      .sorted();

  final lines = [
    '// AUTO-GENERATED BY frb_internal, PLEASE DO NOT EDIT',
    for (final file in files) 'pub mod $file;',
    '',
  ];

  File(dir.resolve('mod.rs').toFilePath()).writeAsStringSync(lines.join('\n'));
}
