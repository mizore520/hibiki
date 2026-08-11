import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

/// Executes the real popup.js entry-navigation code in Node. The behavior
/// harness proves that Alt+wheel moves the visible entry from its start and
/// that the first-entry boundary returns to the true document top.
void main() {
  test(
    'popup entry navigation keeps focus and scroll position aligned',
    () async {
      final String? nodeExe = _resolveNode();
      if (nodeExe == null) {
        markTestSkipped(
          'node not found on PATH; skipping JS behavior execution',
        );
        return;
      }

      final File jsTest = File(
        'test/reader/popup_entry_navigation_behavior_test.js',
      );
      expect(
        jsTest.existsSync(),
        isTrue,
        reason: 'behavior harness ${jsTest.path} must exist',
      );

      final ProcessResult result = await Process.run(nodeExe, <String>[
        jsTest.path,
      ], workingDirectory: Directory.current.path);

      expect(
        result.exitCode,
        0,
        reason:
            'popup entry navigation behavior test failed. '
            'stdout: ${result.stdout} stderr: ${result.stderr}',
      );
      expect(
        result.stdout.toString(),
        contains('all assertions passed'),
        reason: 'behavior harness must reach its success marker',
      );
    },
  );
}

String? _resolveNode() {
  final List<String> candidates = Platform.isWindows
      ? <String>['node.exe', 'node']
      : <String>['node'];
  for (final String name in candidates) {
    try {
      final ProcessResult probe = Process.runSync(name, <String>['--version']);
      if (probe.exitCode == 0) return name;
    } on ProcessException {
      // Not found; try the next candidate.
    }
  }
  return null;
}
