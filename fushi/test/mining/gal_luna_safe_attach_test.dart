import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fushi/src/mining/galgame_japanese_locale.dart';
import 'package:fushi/src/mining/gal_hook_session_controller.dart';
import 'package:fushi/src/mining/galgame_audio_encode.dart';
import 'package:fushi/src/mining/galgame_audio_source.dart';
import 'package:fushi/src/mining/window_capture_channel.dart';
import 'package:fushi/src/sync/texthooker_service.dart';
import 'package:fushi/src/sync/texthooker_ws_client.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('Luna safe attach starts loopback with zero injection calls', () async {
    final TexthookerService service = TexthookerService.test();
    final ChangeNotifier endpoints = ChangeNotifier();
    final _FakeLoopbackSource loopback = _FakeLoopbackSource();
    int architectureProbes = 0;
    int injectorResolutions = 0;
    int engineCreations = 0;
    final GalHookSessionController controller = GalHookSessionController(
      textService: service,
      isWindows: true,
      targetImagePathProbe: (_) => r'D:\Games\SafeGame.exe',
      targetWow64Probe: (_) async {
        architectureProbes++;
        return false;
      },
      injectorResolver: ({required bool is32Bit}) async {
        injectorResolutions++;
        return 'injector.exe';
      },
      engineSourceFactory:
          ({
            required int targetPid,
            required String? launchExe,
            required String injectorPath,
            required bool lunaPcHooks,
            String? contentLanguage,
            int? lunaCodepage,
            List<String> launchArguments = const <String>[],
            String launchWorkdir = '',
            GalJapaneseLocaleMode japaneseLocaleMode =
                kGalDefaultJapaneseLocaleMode,
          }) {
            engineCreations++;
            throw StateError('safe mode must not create a native engine');
          },
      loopbackSourceFactory: () => loopback,
      endpointListenable: endpoints,
      endpointStatusLoader: () => const <TexthookerEndpointStatus>[],
    );

    await controller.startAttachedCapture(
      const ExternalWindowInfo(hwnd: 7, pid: 42, title: 'Safe Game'),
      mode: GalAttachCaptureMode.lunaSafe,
    );

    expect(architectureProbes, 0);
    expect(injectorResolutions, 0);
    expect(engineCreations, 0);
    expect(loopback.startCalls, 1);
    expect(controller.currentAttachMode, GalAttachCaptureMode.lunaSafe);
    expect(controller.usesLunaExternalText, isTrue);
    expect(controller.state.phase, GalHookSessionPhase.waitingSignals);
    expect(controller.state.audioBackend, GalHookAudioBackend.systemLoopback);
    expect(controller.state.injectorFailure, GalHookInjectorFailure.none);
    expect(
      controller.events.map((GalHookEvent event) => event.code),
      contains('session.luna_safe_attached'),
    );

    await controller.stopCapture();
    await controller.close();
    endpoints.dispose();
  });

  test('safe attach choice is remembered by attached exe path', () async {
    final Map<String, GalCaptureMemory> memory = <String, GalCaptureMemory>{};
    const ExternalWindowInfo window = ExternalWindowInfo(
      hwnd: 8,
      pid: 84,
      title: 'Remembered Game',
    );

    Future<GalHookSessionController> buildController(
      ChangeNotifier endpoints,
      _FakeLoopbackSource loopback,
    ) async {
      final GalHookSessionController controller = GalHookSessionController(
        textService: TexthookerService.test(),
        isWindows: true,
        targetImagePathProbe: (_) => r'D:\Games\Remembered.exe',
        targetWow64Probe: (_) async =>
            throw StateError('remembered safe mode must skip architecture'),
        injectorResolver: ({required bool is32Bit}) =>
            throw StateError('remembered safe mode must skip injector'),
        engineSourceFactory:
            ({
              required int targetPid,
              required String? launchExe,
              required String injectorPath,
              required bool lunaPcHooks,
              String? contentLanguage,
              int? lunaCodepage,
              List<String> launchArguments = const <String>[],
              String launchWorkdir = '',
              GalJapaneseLocaleMode japaneseLocaleMode =
                  kGalDefaultJapaneseLocaleMode,
            }) => throw StateError(
              'remembered safe mode must skip native engine',
            ),
        loopbackSourceFactory: () => loopback,
        endpointListenable: endpoints,
        endpointStatusLoader: () => const <TexthookerEndpointStatus>[],
      );
      controller.attachCaptureMemory(
        load: (String key) => memory[key] ?? const GalCaptureMemory(),
        save: (String key, GalCaptureMemory value) => memory[key] = value,
      );
      return controller;
    }

    final ChangeNotifier firstEndpoints = ChangeNotifier();
    final GalHookSessionController first = await buildController(
      firstEndpoints,
      _FakeLoopbackSource(),
    );
    await first.startAttachedCapture(
      window,
      mode: GalAttachCaptureMode.lunaSafe,
    );
    expect(
      memory[r'd:\games\remembered.exe']?.attachMode,
      GalAttachCaptureMode.lunaSafe,
    );
    await first.stopCapture();
    await first.close();
    firstEndpoints.dispose();

    final ChangeNotifier secondEndpoints = ChangeNotifier();
    final _FakeLoopbackSource secondLoopback = _FakeLoopbackSource();
    final GalHookSessionController second = await buildController(
      secondEndpoints,
      secondLoopback,
    );
    expect(
      second.rememberedAttachModeForWindow(window),
      GalAttachCaptureMode.lunaSafe,
    );
    await second.startAttachedCapture(window);
    expect(second.currentAttachMode, GalAttachCaptureMode.lunaSafe);
    expect(secondLoopback.startCalls, 1);

    final Map<String, Object?> json = memory.values.single.toJson();
    expect(json['attachMode'], 'lunaSafe');
    expect(
      GalCaptureMemory.fromJson(json).attachMode,
      GalAttachCaptureMode.lunaSafe,
    );

    await second.stopCapture();
    await second.close();
    secondEndpoints.dispose();
  });

  test('Luna timing memory is bounded to 1000ms', () {
    final GalCaptureMemory memory = GalCaptureMemory.fromJson(
      const <Object?, Object?>{
        'lunaAudioPreRollMs': 3000,
        'lunaAudioTailTrimMs': 2000,
      },
    );
    expect(memory.lunaAudioPreRollMs, 1000);
    expect(memory.lunaAudioTailTrimMs, 1000);
  });

  test('Luna timing is restored and saved per attached exe', () async {
    final Map<String, GalCaptureMemory> store = <String, GalCaptureMemory>{
      r'd:\games\attached.exe': const GalCaptureMemory(
        lunaAudioPreRollMs: 350,
        lunaAudioTailTrimMs: 200,
        attachMode: GalAttachCaptureMode.lunaSafe,
      ),
    };
    final ChangeNotifier endpoints = ChangeNotifier();
    final GalHookSessionController controller = GalHookSessionController(
      textService: TexthookerService.test(),
      isWindows: true,
      targetImagePathProbe: (_) => r'D:\Games\Attached.exe',
      targetWow64Probe: (_) async =>
          throw StateError('safe mode must skip architecture'),
      injectorResolver: ({required bool is32Bit}) =>
          throw StateError('safe mode must skip injector'),
      loopbackSourceFactory: _FakeLoopbackSource.new,
      endpointListenable: endpoints,
      endpointStatusLoader: () => const <TexthookerEndpointStatus>[],
    );
    controller.attachCaptureMemory(
      load: (String key) => store[key] ?? const GalCaptureMemory(),
      save: (String key, GalCaptureMemory value) => store[key] = value,
    );
    await controller.startAttachedCapture(
      const ExternalWindowInfo(hwnd: 20, pid: 200, title: 'Attached'),
    );
    expect(controller.lunaLoopbackPreRollMs, 350);
    expect(controller.lunaLoopbackTailTrimMs, 200);
    controller.setLunaLoopbackPreRollMs(500);
    controller.setLunaLoopbackTailTrimMs(150);
    controller.persistLunaLoopbackTiming();
    expect(store[r'd:\games\attached.exe']?.lunaAudioPreRollMs, 500);
    expect(store[r'd:\games\attached.exe']?.lunaAudioTailTrimMs, 150);
    await controller.close();
    endpoints.dispose();
  });

  test('Luna next text seals previous line with per-line pre-roll', () async {
    final TexthookerService service = TexthookerService.test();
    final ChangeNotifier endpoints = ChangeNotifier();
    final _FakeLoopbackSource loopback = _FakeLoopbackSource();
    DateTime now = DateTime.utc(2026, 9, 8, 12);
    final GalHookSessionController controller = GalHookSessionController(
      textService: service,
      isWindows: true,
      now: () => now,
      lunaLoopbackPreRollMs: 1200,
      targetImagePathProbe: (_) => r'D:\Games\Boundary.exe',
      loopbackSourceFactory: () => loopback,
      endpointListenable: endpoints,
      endpointStatusLoader: () => const <TexthookerEndpointStatus>[],
    );
    await controller.startAttachedCapture(
      const ExternalWindowInfo(hwnd: 21, pid: 210, title: 'Boundary'),
      mode: GalAttachCaptureMode.lunaSafe,
    );
    service.appendLine(
      '一句目',
      source: TexthookerLineSource.websocket,
      sourceLabel: kLunaTranslatorOriginWsUrl,
      receivedAt: now,
    );
    expect(controller.lunaLoopbackPreRollMs, 1000);
    controller.setLunaLoopbackPreRollMs(100);
    now = now.add(const Duration(milliseconds: 1250));
    service.appendLine(
      '二句目',
      source: TexthookerLineSource.websocket,
      sourceLabel: kLunaTranslatorOriginWsUrl,
      receivedAt: now,
    );
    await _waitUntil(() => loopback.grabRecentBackMs.isNotEmpty);
    expect(loopback.grabRecentBackMs, <int>[2250]);

    now = now.add(const Duration(milliseconds: 1000));
    service.appendLine(
      '三句目',
      source: TexthookerLineSource.websocket,
      sourceLabel: kLunaTranslatorOriginWsUrl,
      receivedAt: now,
    );
    await _waitUntil(() => loopback.grabRecentBackMs.length >= 2);
    expect(loopback.grabRecentBackMs, <int>[2250, 1100]);

    controller.setLunaLoopbackPreRollMs(0);
    now = now.add(const Duration(milliseconds: 1000));
    service.appendLine(
      '四句目',
      source: TexthookerLineSource.websocket,
      sourceLabel: kLunaTranslatorOriginWsUrl,
      receivedAt: now,
    );
    await _waitUntil(() => loopback.grabRecentBackMs.length >= 3);
    now = now.add(const Duration(milliseconds: 150));
    service.appendLine(
      '五句目',
      source: TexthookerLineSource.websocket,
      sourceLabel: kLunaTranslatorOriginWsUrl,
      receivedAt: now,
    );
    await _waitUntil(() => loopback.grabRecentBackMs.length >= 4);
    expect(loopback.grabRecentBackMs, <int>[2250, 1100, 1100, 150]);
    await controller.close();
    endpoints.dispose();
  });

  test('Luna next-line boundary trims remembered tail', () async {
    final TexthookerService service = TexthookerService.test();
    final ChangeNotifier endpoints = ChangeNotifier();
    final _TimedLoopbackSource loopback = _TimedLoopbackSource();
    DateTime now = DateTime.utc(2026, 9, 8, 13);
    final GalHookSessionController controller = GalHookSessionController(
      textService: service,
      isWindows: true,
      now: () => now,
      lunaLoopbackPreRollMs: 200,
      lunaLoopbackTailTrimMs: 300,
      targetImagePathProbe: (_) => r'D:\Games\Tail.exe',
      loopbackSourceFactory: () => loopback,
      endpointListenable: endpoints,
      endpointStatusLoader: () => const <TexthookerEndpointStatus>[],
    );
    await controller.startAttachedCapture(
      const ExternalWindowInfo(hwnd: 22, pid: 220, title: 'Tail'),
      mode: GalAttachCaptureMode.lunaSafe,
    );
    service.appendLine(
      '一句目',
      source: TexthookerLineSource.websocket,
      sourceLabel: kLunaTranslatorOriginWsUrl,
      receivedAt: now,
    );
    controller.setLunaLoopbackTailTrimMs(0);
    now = now.add(const Duration(milliseconds: 2000));
    service.appendLine(
      '二句目',
      source: TexthookerLineSource.websocket,
      sourceLabel: kLunaTranslatorOriginWsUrl,
      receivedAt: now,
    );
    await _waitUntil(() => service.entries.first.audioDurationMs != null);
    expect(loopback.grabRecentBackMs, <int>[2200]);
    expect(service.entries.first.audioDurationMs, 1900);
    await controller.close();
    endpoints.dispose();
  });

  test('Luna loopback keeps the 30-second safety-boundary mechanism', () async {
    final TexthookerService service = TexthookerService.test();
    final ChangeNotifier endpoints = ChangeNotifier();
    final _FakeLoopbackSource loopback = _FakeLoopbackSource();
    final GalHookSessionController controller = GalHookSessionController(
      textService: service,
      isWindows: true,
      lunaLoopbackMaxDuration: const Duration(milliseconds: 20),
      lunaLoopbackPreRollMs: 800,
      targetImagePathProbe: (_) => r'D:\Games\Timeout.exe',
      loopbackSourceFactory: () => loopback,
      endpointListenable: endpoints,
      endpointStatusLoader: () => const <TexthookerEndpointStatus>[],
    );
    await controller.startAttachedCapture(
      const ExternalWindowInfo(hwnd: 23, pid: 230, title: 'Timeout'),
      mode: GalAttachCaptureMode.lunaSafe,
    );
    service.appendLine(
      '最后一句',
      source: TexthookerLineSource.websocket,
      sourceLabel: kLunaTranslatorOriginWsUrl,
    );
    await _waitUntil(() => loopback.grabRecentBackMs.isNotEmpty);
    expect(loopback.grabRecentBackMs, <int>[820]);
    await controller.close();
    endpoints.dispose();
  });

  test('Luna mining waits until the next-line slice is cached', () async {
    final TexthookerService service = TexthookerService.test();
    final ChangeNotifier endpoints = ChangeNotifier();
    final _BlockingLoopbackSource loopback = _BlockingLoopbackSource();
    final GalHookSessionController controller = GalHookSessionController(
      textService: service,
      isWindows: true,
      targetImagePathProbe: (_) => r'D:\Games\Mining.exe',
      loopbackSourceFactory: () => loopback,
      endpointListenable: endpoints,
      endpointStatusLoader: () => const <TexthookerEndpointStatus>[],
    );
    await controller.startAttachedCapture(
      const ExternalWindowInfo(hwnd: 24, pid: 240, title: 'Mining'),
      mode: GalAttachCaptureMode.lunaSafe,
    );
    final TexthookerLineEntry first = service.appendLine(
      '制卡时仍在播放的句子',
      source: TexthookerLineSource.websocket,
      sourceLabel: kLunaTranslatorOriginWsUrl,
    )!;
    bool completed = false;
    final Future<Uint8List?> mining = controller
        .captureAudioBytes(
          lineId: first.id,
          sentence: first.text,
          outputExtension: 'aac',
        )
        .whenComplete(() => completed = true);
    await Future<void>.delayed(Duration.zero);
    expect(completed, isFalse);
    expect(loopback.grabRecentCalls, 0);

    service.appendLine(
      '下一句就是结束边界',
      source: TexthookerLineSource.websocket,
      sourceLabel: kLunaTranslatorOriginWsUrl,
    );
    await _waitUntil(() => loopback.grabRecentCalls == 1);
    expect(completed, isFalse);
    loopback.allowCapture.complete();
    await mining.timeout(const Duration(seconds: 10));
    expect(completed, isTrue);
    expect(loopback.grabRecentCalls, 1);
    expect(
      controller.events.map((GalHookEvent event) => event.code),
      contains('card.luna_audio_boundary_wait'),
    );
    await controller.close();
    endpoints.dispose();
  });

  test('Luna selection ignores parallel non-origin websocket text', () async {
    final TexthookerService service = TexthookerService.test();
    final ChangeNotifier endpoints = ChangeNotifier();
    final GalHookSessionController controller = GalHookSessionController(
      textService: service,
      isWindows: true,
      targetImagePathProbe: (_) => r'D:\Games\Isolation.exe',
      loopbackSourceFactory: _FakeLoopbackSource.new,
      endpointListenable: endpoints,
      endpointStatusLoader: () => const <TexthookerEndpointStatus>[],
    );
    await controller.startAttachedCapture(
      const ExternalWindowInfo(hwnd: 25, pid: 250, title: 'Isolation'),
      mode: GalAttachCaptureMode.lunaSafe,
    );
    service.appendLine(
      'Luna 原文',
      source: TexthookerLineSource.websocket,
      sourceLabel: kLunaTranslatorOriginWsUrl,
    );
    service.appendLine(
      'parallel endpoint',
      source: TexthookerLineSource.websocket,
      sourceLabel: 'ws://localhost:6677',
    );
    expect(
      controller.workbenchLines.map((TexthookerLineEntry line) => line.text),
      <String>['Luna 原文'],
    );
    await controller.close();
    endpoints.dispose();
  });
}

class _FakeLoopbackSource extends LoopbackGalAudioSource {
  int startCalls = 0;
  int grabRecentCalls = 0;
  final List<int> grabRecentBackMs = <int>[];

  @override
  Future<PcmFormat?> start() async {
    startCalls++;
    return const PcmFormat(
      sampleRate: 48000,
      channels: 2,
      bitsPerSample: 32,
      isFloat: true,
    );
  }

  @override
  Future<GalAudioSlice?> grabRecent(int backMs) async {
    grabRecentCalls++;
    grabRecentBackMs.add(backMs);
    return GalAudioSlice(
      pcm: Uint8List(backMs * 8),
      format: const PcmFormat(
        sampleRate: 48000,
        channels: 2,
        bitsPerSample: 32,
        isFloat: true,
      ),
    );
  }
}

class _TimedLoopbackSource extends _FakeLoopbackSource {
  static const PcmFormat _format = PcmFormat(
    sampleRate: 1000,
    channels: 1,
    bitsPerSample: 16,
    isFloat: false,
  );

  @override
  Future<PcmFormat?> start() async {
    startCalls++;
    return _format;
  }

  @override
  Future<GalAudioSlice?> grabRecent(int backMs) async {
    grabRecentCalls++;
    grabRecentBackMs.add(backMs);
    return GalAudioSlice(
      pcm: Uint8List(backMs * _format.byteRate ~/ 1000),
      format: _format,
    );
  }
}

class _BlockingLoopbackSource extends _FakeLoopbackSource {
  final Completer<void> allowCapture = Completer<void>();

  @override
  Future<GalAudioSlice?> grabRecent(int backMs) async {
    grabRecentCalls++;
    grabRecentBackMs.add(backMs);
    await allowCapture.future;
    return GalAudioSlice(
      pcm: Uint8List(backMs * 8),
      format: const PcmFormat(
        sampleRate: 48000,
        channels: 2,
        bitsPerSample: 32,
        isFloat: true,
      ),
    );
  }
}

Future<void> _waitUntil(bool Function() condition) async {
  for (int i = 0; i < 100 && !condition(); i++) {
    await Future<void>.delayed(const Duration(milliseconds: 5));
  }
  expect(condition(), isTrue);
}
