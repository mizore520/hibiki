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
      final String stateSource = stateScript.readAsStringSync();
      final String packaging = packager.readAsStringSync();

      expect(source, contains('get_windows_build_state.ps1'));
      expect(stateSource, contains('core.quotePath=false'));
      expect(source, contains('.last_built_state'));
      expect(source, isNot(contains('status --porcelain')));
      expect(source, contains('prepare_windows_gal_helper.ps1'));
      expect(source, contains('prepare_windows_torrent_runtime.ps1'));
      expect(source, contains(r'.dart_tool\flutter_build'));
      expect(source, contains(r'build\windows\app.so'));
      expect(source, contains('HELPER_X64'));
      expect(source, contains('HELPER_X86'));
      expect(
        source,
        contains('Existing Release bundle has no complete Galgame helper'),
      );
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
      expect(
        source,
        contains('RECHECK_STATE'),
        reason: '在依赖准备后重新核对 state/stamp，避免并行 launcher 重复进入 helper build',
      );
      expect(
        source.indexOf('RECHECK_STATE'),
        lessThan(
          source.indexOf('echo [5/7] Building the bundled Galgame helper'),
        ),
      );
      expect(
        source,
        contains('Another launcher already completed this exact source state'),
      );
      expect(source, contains('resolve_windows_build_root.ps1'));
      expect(source, contains('promote_windows_candidate_build.ps1'));
      expect(source, contains('invoke_windows_build_step.ps1'));
      expect(source, contains('call :end_log failed'));
      expect(
        source.indexOf(r'if exist "%STAMP%" del /f /q "%STAMP%"'),
        allOf(
          greaterThan(source.indexOf('RECHECK_STATE')),
          lessThan(
            source.indexOf('echo [5/7] Building the bundled Galgame helper'),
          ),
        ),
        reason: '改动 Release 前先删 stamp，半成品不能被启动或被合并后复用',
      );
      expect(source, contains('-HelperAlreadyBuilt'));
      expect(packaging, contains(r'[switch]$HelperAlreadyBuilt'));
      expect(packaging, contains(r'if (-not $HelperAlreadyBuilt)'));

      final String helper = helperScript.readAsStringSync();
      expect(helper, contains('vswhere.exe'));
      expect(helper, contains(r'CommonExtensions\Microsoft\CMake\CMake\bin'));
      expect(helper, contains(r"$requiredCommands = @('cmake')"));
      expect(
        helper,
        contains(r'if (-not $Force -and -not $RunTests)'),
        reason: '缓存只能短路普通本地构建，不能短路显式的完整测试请求',
      );
      expect(helper, contains(r"$requiredCommands += 'ctest'"));
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
    'build state tracks source but ignores docs and gitignored build products',
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
      await git(<String>['config', 'core.quotePath', 'true']);
      await File('${temp.path}/.gitignore').writeAsString('build/\n');
      final File tracked = File('${temp.path}/source.txt');
      await tracked.writeAsString('one\n');
      final File trackedDocs = File('${temp.path}/docs/README.md');
      await trackedDocs.parent.create(recursive: true);
      await trackedDocs.writeAsString('docs\n');
      final File trackedTest = File('${temp.path}/test/fixture.txt');
      await trackedTest.parent.create(recursive: true);
      await trackedTest.writeAsString('test\n');
      final File trackedStateTool = File(
        '${temp.path}/tool/get_windows_build_state.ps1',
      );
      await trackedStateTool.parent.create(recursive: true);
      await trackedStateTool.writeAsString('state tool\n');
      final File trackedLauncher = File('${temp.path}/启动Hibiki最新版.bat');
      await trackedLauncher.writeAsString('launcher\n');
      await git(<String>[
        'add',
        '.gitignore',
        'source.txt',
        'docs/README.md',
        'test/fixture.txt',
        'tool/get_windows_build_state.ps1',
        '启动Hibiki最新版.bat',
      ]);
      await git(<String>['commit', '-m', 'fixture']);

      final String clean = await state();
      await Directory('${temp.path}/build').create();
      await File('${temp.path}/build/output.exe').writeAsString('generated');
      expect(await state(), clean);

      await trackedDocs.writeAsString('docs changed\n');
      expect(await state(), clean);

      await trackedTest.writeAsString('test changed\n');
      expect(await state(), clean);

      await trackedStateTool.writeAsString('state tool changed\n');
      expect(await state(), clean);

      await trackedLauncher.writeAsString('launcher changed\n');
      expect(await state(), clean);

      await Directory('${temp.path}/docs').create();
      await File('${temp.path}/docs/bug-note.md').writeAsString('notes\n');
      expect(await state(), clean);

      await tracked.writeAsString('two\n');
      final String trackedDirty = await state();
      expect(trackedDirty, isNot(clean));
      await tracked.writeAsString('one\n');
      expect(await state(), clean);

      await File('${temp.path}/new_source.txt').writeAsString('new\n');
      final String asciiUntracked = await state();
      expect(asciiUntracked, isNot(clean));

      final File chineseUntracked = File('${temp.path}/tool/启动识别测试.bat');
      await chineseUntracked.writeAsString('first\n');
      final String chineseState = await state();
      expect(chineseState, matches(RegExp(r'^[a-f0-9]{64}$')));
      expect(chineseState, isNot(asciiUntracked));
      await chineseUntracked.writeAsString('second\n');
      expect(await state(), isNot(chineseState));
      await chineseUntracked.delete();
      expect(await state(), asciiUntracked);
    },
  );

  group('content-based state and the shared candidate build', () {
    final File resolveScript = File('../tool/resolve_windows_build_root.ps1');
    final File promoteScript = File(
      '../tool/promote_windows_candidate_build.ps1',
    );

    late Directory temp;
    late Directory main;

    Future<ProcessResult> run(
      String executable,
      List<String> arguments, {
      String? workingDirectory,
    }) {
      return Process.run(
        executable,
        arguments,
        workingDirectory: workingDirectory,
      );
    }

    Future<String> git(Directory directory, List<String> arguments) async {
      final ProcessResult result = await run('git', <String>[
        '-C',
        directory.path,
        ...arguments,
      ]);
      expect(result.exitCode, 0, reason: '${result.stdout}\n${result.stderr}');
      return result.stdout.toString().trim();
    }

    Future<ProcessResult> powershell(File script, List<String> arguments) {
      return run('powershell', <String>[
        '-NoProfile',
        '-ExecutionPolicy',
        'Bypass',
        '-File',
        script.absolute.path,
        ...arguments,
      ]);
    }

    Future<String> stateOf(Directory repo) async {
      final ProcessResult result = await powershell(stateScript, <String>[
        '-RepoRoot',
        repo.path,
      ]);
      expect(result.exitCode, 0, reason: '${result.stderr}');
      return result.stdout.toString().trim();
    }

    Future<String> buildRootFor(Directory repo) async {
      final ProcessResult result = await powershell(resolveScript, <String>[
        '-RepoRoot',
        repo.path,
      ]);
      expect(result.exitCode, 0, reason: '${result.stderr}');
      return result.stdout.toString().trim();
    }

    String normalized(String path) =>
        Directory(path).absolute.path.replaceAll('/', r'\').toLowerCase();

    Future<void> commitFile(
      Directory repo,
      String relative,
      String content,
    ) async {
      final File file = File('${repo.path}/$relative');
      await file.parent.create(recursive: true);
      await file.writeAsString(content);
      await git(repo, <String>['add', relative]);
      await git(repo, <String>['commit', '-q', '-m', relative]);
    }

    setUp(() async {
      if (!Platform.isWindows) return;
      temp = await Directory.systemTemp.createTemp('fushi-build-root-');
      main = Directory('${temp.path}/main');
      await main.create();
      await git(main, <String>['init', '-q']);
      await git(main, <String>['config', 'user.name', 'Fushi Test']);
      await git(main, <String>[
        'config',
        'user.email',
        'fushi-test@example.invalid',
      ]);
      await File('${main.path}/.gitignore').writeAsString('build/\n');
      await git(main, <String>['add', '.gitignore']);
      await commitFile(main, 'fushi/lib/app.dart', 'one\n');
    });

    tearDown(() async {
      if (!Platform.isWindows) return;
      await run('git', <String>['-C', main.path, 'worktree', 'prune']);
      if (await temp.exists()) await temp.delete(recursive: true);
    });

    test('committed docs keep the state; equal sources share it', () async {
      if (!Platform.isWindows) return;

      final String initial = await stateOf(main);
      await commitFile(main, 'docs/notes.md', 'notes\n');
      expect(
        await stateOf(main),
        initial,
        reason: 'a docs-only commit must not force a rebuild',
      );

      final Directory clone = Directory('${temp.path}/clone');
      await git(main, <String>['worktree', 'add', '-q', clone.path, 'HEAD']);
      expect(
        await stateOf(clone),
        initial,
        reason: 'identical sources in another checkout share one state',
      );

      await commitFile(main, 'fushi/lib/app.dart', 'two\n');
      expect(await stateOf(main), isNot(initial));
    });

    test('committed candidates build in the shared checkout', () async {
      if (!Platform.isWindows) return;

      expect(normalized(await buildRootFor(main)), normalized(main.path));

      final Directory candidate = Directory(
        '${main.path}/.worktrees/candidate',
      );
      await git(main, <String>[
        'worktree',
        'add',
        '-q',
        '-b',
        'candidate',
        candidate.path,
      ]);
      await commitFile(candidate, 'fushi/lib/app.dart', 'candidate\n');
      final String candidateHead = await git(candidate, <String>[
        'rev-parse',
        'HEAD',
      ]);

      // Native-asset downloads the main checkout already has are seeded.
      const String hookDownload =
          '.dart_tool/hooks_runner/shared/pdfium_dart/build/'
          'chromium_7811/win-x64/pdfium.dll';
      const String hookExisting =
          '.dart_tool/hooks_runner/shared/sqlite3/build/existing.dll';
      for (final String relative in <String>[hookDownload, hookExisting]) {
        final File file = File('${main.path}/$relative');
        await file.parent.create(recursive: true);
        await file.writeAsString('from main');
      }

      final String shared = '${main.path}/.worktrees/_candidate-build';
      expect(normalized(await buildRootFor(candidate)), normalized(shared));
      expect(
        await git(Directory(shared), <String>['rev-parse', 'HEAD']),
        candidateHead,
      );
      expect(File('$shared/$hookDownload').readAsStringSync(), 'from main');

      // Files already present in the shared checkout are never overwritten.
      File('$shared/$hookExisting').writeAsStringSync('shared copy');
      await File('${main.path}/$hookDownload').writeAsString('newer main');
      await buildRootFor(candidate);
      expect(File('$shared/$hookExisting').readAsStringSync(), 'shared copy');
      expect(File('$shared/$hookDownload').readAsStringSync(), 'from main');

      // A second candidate moves the same checkout.
      await git(main, <String>['commit', '-q', '--allow-empty', '-m', 'm']);
      final Directory other = Directory('${main.path}/.worktrees/other');
      await git(main, <String>[
        'worktree',
        'add',
        '-q',
        '--detach',
        other.path,
        'HEAD',
      ]);
      expect(normalized(await buildRootFor(other)), normalized(shared));
      expect(
        await git(Directory(shared), <String>['rev-parse', 'HEAD']),
        await git(main, <String>['rev-parse', 'HEAD']),
      );

      // Uncommitted docs do not matter; uncommitted sources build in place.
      await File('${other.path}/docs/draft.md').create(recursive: true);
      expect(normalized(await buildRootFor(other)), normalized(shared));
      await File('${other.path}/fushi/lib/app.dart').writeAsString('dirty\n');
      expect(normalized(await buildRootFor(other)), normalized(other.path));

      // Edits inside the shared checkout block switching it.
      await File('$shared/fushi/lib/app.dart').writeAsString('edited\n');
      final ProcessResult blocked = await powershell(resolveScript, <String>[
        '-RepoRoot',
        candidate.path,
      ]);
      expect(blocked.exitCode, isNot(0));
      expect(blocked.stderr.toString(), contains('local edits'));
    });

    test('a verified candidate bundle is reused without purging', () async {
      if (!Platform.isWindows) return;

      final String shared = '${main.path}/.worktrees/_candidate-build';
      await git(main, <String>['worktree', 'add', '-q', '--detach', shared]);
      const String release = r'fushi\build\windows\x64\runner\Release';
      Future<void> write(String root, String relative, String content) async {
        final File file = File('$root\\$relative');
        await file.parent.create(recursive: true);
        await file.writeAsString(content);
      }

      for (final String file in <String>[
        'fushi.exe',
        r'voice_hook\x64\fushi_voice_injector.exe',
        r'voice_hook\x64\fushi_voice_hook.dll',
        r'voice_hook\x86\fushi_voice_injector.exe',
        r'voice_hook\x86\fushi_voice_hook.dll',
        r'data\app.so',
      ]) {
        await write(shared, '$release\\$file', 'candidate $file');
      }
      await write(shared, '$release\\fushi.exe.WebView2\\profile', 'cand');
      await write(main.path, '$release\\fushi.exe.WebView2\\profile', 'main');
      await write(main.path, '$release\\runtime-extra.txt', 'keep');

      final String state = await stateOf(main);
      Future<ProcessResult> promote() => powershell(promoteScript, <String>[
        '-RepoRoot',
        main.path,
        '-State',
        state,
      ]);

      // No stamp in the shared checkout: nothing is reusable yet.
      expect((await promote()).exitCode, 3);

      await write(shared, r'fushi\build\.last_built_state', 'other\r\n');
      expect((await promote()).exitCode, 3);

      await write(shared, r'fushi\build\.last_built_state', '$state\r\n');
      final ProcessResult reused = await promote();
      expect(reused.exitCode, 0, reason: '${reused.stdout}\n${reused.stderr}');

      String read(String relative) =>
          File('${main.path}\\$release\\$relative').readAsStringSync();
      expect(read('fushi.exe'), 'candidate fushi.exe');
      expect(read(r'data\app.so'), r'candidate data\app.so');
      expect(read(r'fushi.exe.WebView2\profile'), 'main');
      expect(read('runtime-extra.txt'), 'keep');
      expect(
        File(
          '${main.path}\\fushi\\build\\.last_built_state',
        ).readAsStringSync().trim(),
        state,
      );
    });
  });
}
