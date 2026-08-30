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
    expect(launcher, contains('onnxruntime-directml-1.22.0'));
    expect(launcher, contains('prepare_windows_onnxruntime.ps1'));
    expect(
      launcher.indexOf('prepare_windows_onnxruntime.ps1'),
      lessThan(launcher.indexOf('build windows --release')),
    );

    expect(script, contains('Test-VerifiedRuntime'));
    expect(script, contains('Get-Sha256Hex'));
    expect(script, contains('[Security.Cryptography.SHA256]::Create()'));
    expect(
      script,
      isNot(contains('Get-FileHash -LiteralPath')),
      reason: '启动 BAT 的环境下模块自动加载可能失效（BUG-1601）',
    );
    expect(script, contains('Invoke-WebRequest'));
    expect(script, contains("Get-Command 'curl.exe'"));
    expect(
      script,
      contains('rev-parse --path-format=absolute --git-common-dir'),
    );
    expect(script, contains('.build-cache\\onnxruntime\\\$packageName'));
    expect(script, contains("Join-Path \$cache '.downloads'"));
    expect(script, contains('--continue-at -'));
    expect(script, contains('.nupkg'));
    expect(script, contains('\$Destination.partial'));
    expect(
      script,
      contains('29f9872d786236b79aa83f94482f3a17'),
      reason: 'ONNX Runtime DirectML NuGet archive must remain pinned',
    );
    expect(
      script,
      contains('4e7cb7ddce8cf837a7a75dc029209b5'),
      reason: 'DirectML redistributable NuGet archive must remain pinned',
    );
    expect(script, contains('onnxruntime_providers_shared.dll'));
    expect(script, contains('DirectML.dll'));
    expect(script, contains('--connect-timeout 20'));
    expect(script, contains('-TimeoutSec 120'));
    expect(script, contains('foreach (\$attempt in 1..3)'));
    expect(script, contains("Join-Path \$env:SystemRoot 'System32\\tar.exe'"));
    expect(
      script,
      contains('& \$windowsTar -xf \$ortArchiveName -C \$ortStage'),
    );
    expect(
      script,
      isNot(contains('fushi\\build\\windows')),
      reason: 'DirectML cache must not be coupled to flutter clean output',
    );
  });

  test('Windows launcher prepares a stable verified SQLite native asset', () {
    final String launcher = File(
      '${repoRoot.path}${Platform.pathSeparator}启动Hibiki最新版.bat',
    ).readAsStringSync();
    final String script = File(
      '${repoRoot.path}${Platform.pathSeparator}tool'
      '${Platform.pathSeparator}prepare_windows_sqlite3.ps1',
    ).readAsStringSync();
    final String pubspec = File(
      '${repoRoot.path}${Platform.pathSeparator}fushi'
      '${Platform.pathSeparator}pubspec.yaml',
    ).readAsStringSync();
    final String patcher = File(
      '${repoRoot.path}${Platform.pathSeparator}ci'
      '${Platform.pathSeparator}apply-patches.sh',
    ).readAsStringSync();
    final String windowsCmake = File(
      '${repoRoot.path}${Platform.pathSeparator}fushi'
      '${Platform.pathSeparator}windows${Platform.pathSeparator}CMakeLists.txt',
    ).readAsStringSync();

    expect(launcher, contains('prepare_windows_sqlite3.ps1'));
    expect(launcher, contains('.build-cache\\sqlite3'));
    expect(
      launcher.indexOf('prepare_windows_sqlite3.ps1'),
      lessThan(launcher.indexOf('build windows --release')),
    );
    expect(script, contains('Test-VerifiedSqlite'));
    expect(script, contains('Get-Sha256Hex'));
    expect(script, contains('[Security.Cryptography.SHA256]::Create()'));
    expect(
      script,
      isNot(contains('Get-FileHash -LiteralPath')),
      reason: 'SQLite 缓存校验也必须避开同一个模块依赖（BUG-1601）',
    );
    expect(script, contains('sqlite3.x64.windows.dll'));
    expect(script, contains('563a01a5fbb929844df1a9f6a84f73f7'));
    expect(script, contains('--continue-at -'));
    expect(
      script,
      contains('rev-parse --path-format=absolute --git-common-dir'),
    );
    expect(pubspec, isNot(contains('source: test-sqlite3')));
    expect(patcher, contains('sqlite3-3.3.3/lib/src/hook/assets.dart'));
    expect(
      patcher,
      contains(r'download-\${type.name}-\${architecture.name}-\${os.name}'),
    );
    expect(script, contains('download-sqlite3-x64-windows-\$releaseTag'));
    expect(script, contains("\$cmakeVersion = '3520000'"));
    expect(script, contains('sqlite-autoconf-\$cmakeVersion'));
    expect(script, contains('Test-VerifiedCmakeSource'));
    expect(script, contains("'sqlite3.c' = 'a503acc9"));
    expect(script, contains('Push-Location -LiteralPath \$sourceStage'));
    expect(script, contains('& tar.exe -xzf \$archiveLeaf -C .'));
    expect(
      script,
      isNot(contains('& tar.exe -xzf \$sourceArchive')),
      reason: 'bsdtar 会把 E:\\\\... 这类带冒号的绝对路径当成 host:path',
    );
    expect(launcher, contains('FUSHI_SQLITE3_SOURCE_DIR'));
    expect(windowsCmake, contains(r'ENV{FUSHI_SQLITE3_SOURCE_DIR}'));
    expect(windowsCmake, contains('FETCHCONTENT_SOURCE_DIR_SQLITE3'));
  });

  test(
    'galgame helper packaging hashes avoid module-only commands (BUG-1601)',
    () {
      for (final String relativePath in <String>[
        'native/galgame_hook/tools/build_distribution.ps1',
        'native/galgame_hook/tools/sync_lunahook.ps1',
      ]) {
        final File file = File(
          '${repoRoot.path}${Platform.pathSeparator}'
          '${relativePath.replaceAll('/', Platform.pathSeparator)}',
        );
        expect(file.existsSync(), isTrue, reason: 'missing $relativePath');
        final String script = file.readAsStringSync();
        expect(script, contains('[Security.Cryptography.SHA256]::Create()'));
        expect(
          script,
          isNot(contains('Get-FileHash -')),
          reason:
              '$relativePath runs under the normalized launcher environment',
        );
      }

      final String installer = File(
        '${repoRoot.path}${Platform.pathSeparator}native'
        '${Platform.pathSeparator}galgame_hook${Platform.pathSeparator}tools'
        '${Platform.pathSeparator}install_into_bundle.ps1',
      ).readAsStringSync();
      final String fingerprint = File(
        '${repoRoot.path}${Platform.pathSeparator}native'
        '${Platform.pathSeparator}galgame_hook${Platform.pathSeparator}tools'
        '${Platform.pathSeparator}helper_source_fingerprint.ps1',
      ).readAsStringSync();
      expect(installer, contains(r'. $fingerprintScript'));
      expect(fingerprint, contains('[Security.Cryptography.SHA256]::Create()'));
      expect(installer, isNot(contains('Get-FileHash -')));
    },
  );

  test(
    'torrent runtime cache hashes avoid module-only commands (BUG-1601)',
    () {
      final String script = File(
        '${repoRoot.path}${Platform.pathSeparator}tool'
        '${Platform.pathSeparator}prepare_windows_torrent_runtime.ps1',
      ).readAsStringSync();
      expect(script, contains('Get-Sha256Hex'));
      expect(script, contains('[Security.Cryptography.SHA256]::Create()'));
      expect(script, isNot(contains('Get-FileHash -')));
    },
  );

  test('ONNX CMake validates prepared cache and fallback operations', () {
    final String cmake = File(
      '${repoRoot.path}${Platform.pathSeparator}third_party'
      '${Platform.pathSeparator}flutter_onnxruntime'
      '${Platform.pathSeparator}windows'
      '${Platform.pathSeparator}CMakeLists.txt',
    ).readAsStringSync();

    expect(cmake, contains(r'ENV{FUSHI_ONNXRUNTIME_ROOT}'));
    expect(cmake, contains('ONNXRUNTIME_PREPARED_EXTERNALLY'));
    expect(cmake, contains('ONNXRUNTIME_EXTRACT_RESULT'));
    expect(cmake, contains('EXPECTED_HASH "SHA256='));
    expect(cmake, contains('onnxruntime_providers_shared.dll'));
    expect(cmake, contains('DirectML.dll'));
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
