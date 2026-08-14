import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  final File builder = File('../tool/build_windows_candidate.ps1');
  final File verifier = File('../tool/verify_windows_candidate.ps1');
  final File runtimePackager = File('../tool/package_windows_runtime.ps1');
  final File workflow = File('../.github/workflows/release-desktop.yml');
  final File releasePolicy = File('../tool/check_release_policy.ps1');
  final File buildGuide = File('../docs/agent/build.md');
  final File mihonBuilder = File('../tool/mihon/build_desktop_runtime.ps1');

  test('complete candidate builder owns every post-build payload', () {
    final String source = builder.readAsStringSync();
    for (final String required in <String>[
      'package_windows_runtime.ps1',
      'build_desktop_runtime.ps1',
      'verify_desktop_runtime.ps1',
      'build_magpie_slim.ps1',
      'verify_windows_candidate.ps1',
    ]) {
      expect(source, contains(required),
          reason: 'missing candidate stage: $required');
    }
    expect(source, contains('Flutter Windows build failed'));
    expect(source, contains('Windows candidate verification failed'));
    expect(source, contains(r"$env:TrackFileAccess = 'false'"));
    expect(source, contains(r'$pwsh = (Get-Command pwsh.exe'));
    expect(source, contains(r'& $pwsh @mihonArguments'));
    expect(source, contains(r"$localJdk21 = 'C:\Program Files\Java\jdk-21'"));
    expect(source, contains(r'build\windows-candidate\Release'));
    expect(source, contains(r'.windows-candidate-build.lock'));
    expect(source, contains('[IO.FileShare]::None'));
    expect(source, contains(r'Get-ChildItem -LiteralPath $baseRelease -Force'));
    expect(source, contains(r"$_.Name -notlike '*.WebView2'"));
    expect(
      source.indexOf(r'Remove-Item -LiteralPath $release'),
      greaterThan(source.indexOf('Candidate output must stay under')),
      reason: 'candidate cleanup must happen only after path containment check',
    );
  });

  test('candidate verifier fails closed across all runtime families', () {
    final String source = verifier.readAsStringSync();
    for (final String required in <String>[
      r'ffmpeg.exe',
      r'ffprobe.exe',
      r'fushi_update_launcher.exe',
      r'fushi_torrent_ffi.dll',
      r'vcruntime140_1.dll',
      r'mihon_bridge\runtime\bin\java.exe',
      r'magpie_bundle\Magpie-hibiki-slim-x64.zip',
      r'voice_hook\x86\fushi_voice_injector.exe',
      r'voice_hook\x64\fushi_voice_hook.dll',
      r'voice_hook\x64\unity_audio_runtime\libvorbis.dll',
    ]) {
      expect(source, contains(required),
          reason: 'unverified runtime: $required');
    }
    expect(source, contains('Magpie checksum mismatch'));
    expect(source, contains('failed -version'));
    expect(source, contains('fushi-candidate-ffmpeg-smoke-'));
    expect(source, contains("'sentence.aac'"));
    expect(source, contains('ffmpeg sentence-audio smoke failed'));
    expect(source, contains('fushi-candidate-manifest.json'));
    expect(
      source.indexOf(
        r'[IO.File]::WriteAllText($manifestPath',
      ),
      greaterThan(source.indexOf('Mihon runtime verification failed')),
      reason: 'the ready manifest must be written only after all smoke checks',
    );
  });

  test('CI and documentation require the same complete candidate gate', () {
    expect(
      workflow.readAsStringSync(),
      contains('tool/verify_windows_candidate.ps1'),
    );
    expect(
      releasePolicy.readAsStringSync(),
      contains('Windows release must pass the complete candidate bundle gate'),
    );
    expect(
      buildGuide.readAsStringSync(),
      contains('fushi-candidate-manifest.json'),
    );
    expect(
      runtimePackager.readAsStringSync(),
      contains('For a distributable candidate'),
    );
  });

  test('Mihon dependency download is bounded, atomic, and hash-gated', () {
    final String source = mihonBuilder.readAsStringSync();
    expect(source, contains('Invoke-VerifiedDownload'));
    expect(source, contains(r'$partial = "$Destination.partial"'));
    expect(source, contains('Get-Command curl.exe'));
    expect(source, contains("'--connect-timeout', '20'"));
    expect(source, contains("'--max-time', '300'"));
    expect(source, contains("'--retry', '2'"));
    expect(source, contains(r"@('--proxy', $proxy)"));
    expect(source, contains(r'-Dhttps.proxyHost='));
    expect(source, contains(r'--init-script'));
    expect(
      source,
      contains('https://maven.aliyun.com/repository/central'),
    );
    expect(source, contains("provider = 'local-java-21'"));
    expect(source, contains("provider = 'adoptium-temurin'"));
    expect(source, contains('javaVersion -notmatch'));
    expect(source, contains(r'version\s+"21[.]'));
    expect(
      source.indexOf(r'Move-Item -LiteralPath $partial'),
      greaterThan(source.indexOf('Downloaded archive checksum mismatch')),
      reason: 'only a verified archive may replace the cache entry',
    );
  });

  test('verifier rejects an incomplete directory without writing a manifest',
      () async {
    if (!Platform.isWindows) return;
    final Directory temp = await Directory.systemTemp.createTemp(
      'fushi-incomplete-candidate-',
    );
    addTearDown(() async {
      if (await temp.exists()) await temp.delete(recursive: true);
    });
    final ProcessResult result = await Process.run(
      'powershell',
      <String>[
        '-NoProfile',
        '-ExecutionPolicy',
        'Bypass',
        '-File',
        verifier.absolute.path,
        '-RepoRoot',
        Directory('../').absolute.path,
        '-ReleaseDir',
        temp.path,
      ],
    );
    expect(result.exitCode, isNot(0));
    expect(
      File('${temp.path}\\fushi-candidate-manifest.json').existsSync(),
      isFalse,
    );
  });
}
