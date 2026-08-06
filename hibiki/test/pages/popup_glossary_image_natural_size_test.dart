import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

/// Runs the Node harness that exercises the vendored Yomitan renderer against
/// native image dimensions, HoshiDicts' structured-content wrapper, tables and
/// fallback-to-declared-size behavior.
void main() {
  test('Yomitan glossary export keeps native media dimensions', () async {
    final String? node = _resolveNode();
    if (node == null) {
      markTestSkipped('node not found on PATH; skipping JS renderer harness');
      return;
    }

    final File harness =
        File('test/pages/popup_glossary_image_natural_size_test.js');
    expect(harness.existsSync(), isTrue,
        reason: 'renderer harness ${harness.path} must exist');

    final ProcessResult result = await Process.run(
      node,
      <String>[harness.path],
      workingDirectory: Directory.current.path,
    );
    expect(
      result.exitCode,
      0,
      reason: 'renderer harness failed.\n'
          'stdout:\n${result.stdout}\nstderr:\n${result.stderr}',
    );
    expect(result.stdout.toString(), contains('all assertions passed'));
  });
}

String? _resolveNode() {
  final List<String> candidates =
      Platform.isWindows ? <String>['node.exe', 'node'] : <String>['node'];
  for (final String candidate in candidates) {
    try {
      final ProcessResult result =
          Process.runSync(candidate, <String>['--version']);
      if (result.exitCode == 0) return candidate;
    } on ProcessException {
      // Try the next executable name.
    }
  }
  return null;
}
