import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  final Directory repoRoot = Directory.current.parent;

  test('Windows launcher prepares persistent verified ONNX Runtime cache', () {
    final String launcher = File(
      '${repoRoot.path}${Platform.pathSeparator}启动Hibiki最新版.bat',
    ).readAsStringSync();
    final String script = File(
      '${repoRoot.path}${Platform.pathSeparator}tool'
      '${Platform.pathSeparator}prepare_windows_onnxruntime.ps1',
    ).readAsStringSync();

    expect(launcher, contains('FUSHI_ONNXRUNTIME_ROOT'));
    expect(launcher, contains('.build-cache\\onnxruntime'));
    expect(launcher, contains('prepare_windows_onnxruntime.ps1'));
    expect(launcher.indexOf('prepare_windows_onnxruntime.ps1'),
        lessThan(launcher.indexOf('build windows --release')));

    expect(script, contains('Test-VerifiedRuntime'));
    expect(script, contains('Get-FileHash'));
    expect(script, contains('Invoke-WebRequest'));
    expect(script, contains("Get-Command 'curl.exe'"));
    expect(script, contains('--connect-timeout 20'));
    expect(script, contains('-TimeoutSec 120'));
    expect(script, contains('foreach (\$attempt in 1..3)'));
    expect(script, contains('hibiki\\build\\windows'));
  });

  test('ONNX CMake validates prepared cache and fallback operations', () {
    final String cmake = File(
      '${repoRoot.path}${Platform.pathSeparator}third_party'
      '${Platform.pathSeparator}flutter_onnxruntime'
      '${Platform.pathSeparator}windows'
      '${Platform.pathSeparator}CMakeLists.txt',
    ).readAsStringSync();

    expect(cmake, contains(r'ENV{FUSHI_ONNXRUNTIME_ROOT}'));
    expect(cmake, contains('ONNXRUNTIME_DOWNLOAD_STATUS'));
    expect(cmake, contains('ONNXRUNTIME_EXTRACT_RESULT'));
    expect(cmake, contains('file(SHA256'));
    expect(cmake, contains('579b636403983254346a5c1d80bd28f1'));
  });

  test('modern CMake TARGET commands do not carry invalid DEPENDS', () {
    for (final String relative in <String>[
      'fushi/windows/runner/CMakeLists.txt',
      'packages/flutter_inappwebview_windows/windows/CMakeLists.txt',
    ]) {
      final String source = File(
        '${repoRoot.path}${Platform.pathSeparator}'
        '${relative.replaceAll('/', Platform.pathSeparator)}',
      ).readAsStringSync();
      expect(source, isNot(contains(r'DEPENDS ${NUGET}')), reason: relative);
    }
  });
}
