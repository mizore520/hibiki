import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  final File launcher = File('../启动Hibiki最新版.bat');
  final File stateScript = File('../tool/get_windows_build_state.ps1');
  final File torrentScript = File(
    '../tool/prepare_windows_torrent_runtime.ps1',
  );
  final File helperScript = File('../tool/prepare_windows_gal_helper.ps1');
  final File packager = File('../tool/package_windows_runtime.ps1');

  test(
    'launcher builds helper before Flutter and records exact source state',
    () {
      final String source = launcher.readAsStringSync();
      final String packaging = packager.readAsStringSync();

      expect(source, contains('get_windows_build_state.ps1'));
      expect(source, contains('.last_built_state'));
      expect(source, isNot(contains('status --porcelain')));
      expect(source, contains('prepare_windows_gal_helper.ps1'));
      expect(source, contains('prepare_windows_torrent_runtime.ps1'));
      expect(source, contains(r'.dart_tool\flutter_build'));
      expect(source, contains(r'build\windows\app.so'));
      expect(source, contains(r'rmdir /s /q "%FLUTTER_AOT_CACHE%"'));
      expect(
        source.indexOf(r'rmdir /s /q "%FLUTTER_AOT_CACHE%"'),
        lessThan(source.indexOf('build windows --release')),
      );
      expect(source, contains('FUSHI_BUILD_ONLY'));
      expect(
        source.indexOf('prepare_windows_torrent_runtime.ps1'),
        lessThan(source.indexOf('build windows --release')),
      );
      expect(
        source.indexOf('prepare_windows_gal_helper.ps1'),
        lessThan(source.indexOf('build windows --release')),
      );
      expect(source, contains('-HelperAlreadyBuilt'));
      expect(packaging, contains(r'[switch]$HelperAlreadyBuilt'));
      expect(packaging, contains(r'if (-not $HelperAlreadyBuilt)'));

      final String helper = helperScript.readAsStringSync();
      expect(helper, contains('vswhere.exe'));
      expect(helper, contains(r'CommonExtensions\Microsoft\CMake\CMake\bin'));
      expect(helper, contains("@('cmake', 'ctest')"));
      expect(helper, contains('build_distribution.ps1'));
      expect(helper, contains('-RunTests'));

      final String torrent = torrentScript.readAsStringSync();
      expect(torrent, contains('fushi_torrent_ffi.dll'));
      expect(torrent, contains('torrent-rasterbar.dll'));
      expect(torrent, contains('libssl-3-x64.dll'));
      expect(torrent, contains('libcrypto-3-x64.dll'));
      expect(torrent, contains('Test-SameTorrentSources'));
      expect(torrent, contains('Get-Sha256Hex'));
      expect(torrent, contains('[Security.Cryptography.SHA256]::Create()'));
      expect(
        torrent,
        isNot(contains('Get-FileHash -')),
        reason: '启动 BAT 规范化模块路径后 Get-FileHash 可能不可用（BUG-1601）',
      );
      expect(torrent, contains('FUSHI_VCPKG_ROOT'));
      expect(torrent, contains('vswhere.exe'));
      expect(torrent, contains(r'.build-cache\vcpkg'));
      expect(torrent, contains(r'.build-cache\fushi_torrent'));
      expect(torrent, contains('Get-StringSha256Hex'));
      expect(torrent, contains(r'-BuildDirectory $torrentBuildDirectory'));
      expect(torrent, contains('VCPKG_TOOL_RELEASE_TAG'));
      expect(torrent, contains('Test-VcpkgToolVersion'));
      expect(
        torrent,
        contains('github.com/microsoft/vcpkg-tool/releases/download'),
      );
      expect(torrent, contains('pinned vcpkg tool ready'));
      expect(
        torrent,
        isNot(contains('seeded vcpkg tool from Visual Studio')),
        reason:
            'VS bundled tool can be older than the pinned baseline contract',
      );
      expect(torrent, contains('fetch --depth 1 origin \$baseline'));
      expect(torrent, contains('-Raw -Encoding UTF8'));
      expect(torrent, contains(r'CommonExtensions\Microsoft\CMake'));
      expect(
        torrent,
        isNot(contains('Refusing to reuse stale native binaries')),
        reason: 'different-source cache must be ignored, then rebuilt locally',
      );
    },
  );

  test(
    'build state tracks source but ignores gitignored build products',
    () async {
      if (!Platform.isWindows) return;

      final Directory temp = await Directory.systemTemp.createTemp(
        'fushi-build-state-',
      );
      addTearDown(() async {
        if (await temp.exists()) await temp.delete(recursive: true);
      });

      Future<void> git(List<String> arguments) async {
        final ProcessResult result = await Process.run('git', <String>[
          '-C',
          temp.path,
          ...arguments,
        ]);
        expect(
          result.exitCode,
          0,
          reason: '${result.stdout}\n${result.stderr}',
        );
      }

      Future<String> state() async {
        final ProcessResult result = await Process.run('powershell', <String>[
          '-NoProfile',
          '-ExecutionPolicy',
          'Bypass',
          '-File',
          stateScript.absolute.path,
          '-RepoRoot',
          temp.path,
        ]);
        expect(
          result.exitCode,
          0,
          reason: '${result.stdout}\n${result.stderr}',
        );
        return result.stdout.toString().trim();
      }

      await git(<String>['init']);
      await git(<String>['config', 'user.name', 'Fushi Test']);
      await git(<String>['config', 'user.email', 'fushi-test@example.invalid']);
      await File('${temp.path}/.gitignore').writeAsString('build/\n');
      final File tracked = File('${temp.path}/source.txt');
      await tracked.writeAsString('one\n');
      await git(<String>['add', '.gitignore', 'source.txt']);
      await git(<String>['commit', '-m', 'fixture']);

      final String clean = await state();
      await Directory('${temp.path}/build').create();
      await File('${temp.path}/build/output.exe').writeAsString('generated');
      expect(await state(), clean);

      await tracked.writeAsString('two\n');
      final String trackedDirty = await state();
      expect(trackedDirty, isNot(clean));
      await tracked.writeAsString('one\n');
      expect(await state(), clean);

      await File('${temp.path}/new_source.txt').writeAsString('new\n');
      expect(await state(), isNot(clean));
    },
  );
}
