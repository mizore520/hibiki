import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  final File injector = File(
    '../native/galgame_hook/injector/injector_main.cpp',
  );
  final File preflight = File(
    '../tool/check_windows_runtime_unlocked.ps1',
  );
  final File launcher = File('../启动Hibiki最新版.bat');
  final File packager = File('../tool/package_windows_runtime.ps1');

  test('attach hold session follows the target process instead of looping', () {
    final String source = injector.readAsStringSync();
    expect(
      source,
      contains('PROCESS_QUERY_INFORMATION | SYNCHRONIZE'),
      reason: 'Attach target handle must be waitable.',
    );
    expect(
      source,
      contains(
        'RunInjection(target, pid, dll_path, wait_ms, hold, nullptr,\n'
        '                              target, effective_luna,\n'
        '                              native_loopback_requested, &reason)',
      ),
      reason: 'Attach mode must use the game process as its hold lifetime.',
    );
    expect(
      source,
      isNot(contains('for (;;) {\n        ProcessUnityVoiceEvents')),
      reason: 'A missing attach wait handle must never mean run forever.',
    );
  });

  test('launcher and packager both run the read-only lock preflight', () {
    final String launcherSource = launcher.readAsStringSync();
    final String packagerSource = packager.readAsStringSync();
    final String preflightSource = preflight.readAsStringSync();

    expect(
      launcherSource,
      contains('check_windows_runtime_unlocked.ps1'),
    );
    expect(
      launcherSource.indexOf('-File "%RUNTIME_UNLOCK_CHECK%"'),
      lessThan(launcherSource.indexOf('Resolving Flutter packages')),
      reason: 'A locked runtime must fail before expensive build work starts.',
    );
    expect(
      packagerSource,
      contains('check_windows_runtime_unlocked.ps1'),
      reason: 'Direct packager callers need the same protection as the BAT.',
    );
    expect(preflightSource, contains('[IO.FileShare]::None'));
    expect(preflightSource, contains("'.exe', '.dll'"));
    expect(preflightSource, isNot(contains('Stop-Process')));
  });

  test('Windows lock preflight rejects a locked helper and accepts it later',
      () async {
    if (!Platform.isWindows) return;

    final Directory temp = await Directory.systemTemp.createTemp(
      'fushi-runtime-lock-test-',
    );
    addTearDown(() async {
      if (await temp.exists()) await temp.delete(recursive: true);
    });
    final File helper = File(
      '${temp.path}\\voice_hook\\x86\\fushi_voice_injector.exe',
    );
    await helper.parent.create(recursive: true);
    await helper.writeAsBytes(<int>[0, 1, 2, 3]);

    final String escaped = helper.path.replaceAll("'", "''");
    final Process locker = await Process.start(
      'powershell',
      <String>[
        '-NoProfile',
        '-Command',
        r"$s=[IO.File]::Open('" +
            escaped +
            r"',[IO.FileMode]::Open,[IO.FileAccess]::ReadWrite,[IO.FileShare]::None); [Console]::Out.WriteLine('READY'); [Console]::Out.Flush(); Start-Sleep -Seconds 60",
      ],
    );
    addTearDown(() {
      locker.kill();
    });
    await locker.stdout
        .transform(utf8.decoder)
        .transform(const LineSplitter())
        .firstWhere((String line) => line == 'READY')
        .timeout(const Duration(seconds: 10));

    final ProcessResult locked = await Process.run(
      'powershell',
      <String>[
        '-NoProfile',
        '-ExecutionPolicy',
        'Bypass',
        '-File',
        preflight.absolute.path,
        '-BundleDirectory',
        temp.path,
      ],
    );
    expect(locked.exitCode, isNot(0));

    locker.kill();
    await locker.exitCode.timeout(const Duration(seconds: 10));
    final ProcessResult unlocked = await Process.run(
      'powershell',
      <String>[
        '-NoProfile',
        '-ExecutionPolicy',
        'Bypass',
        '-File',
        preflight.absolute.path,
        '-BundleDirectory',
        temp.path,
      ],
    );
    expect(unlocked.exitCode, 0, reason: '${unlocked.stderr}');
  });
}
