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
      engineSourceFactory: ({
        required int targetPid,
        required String? launchExe,
        required String injectorPath,
        required bool lunaPcHooks,
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
    const ExternalWindowInfo window =
        ExternalWindowInfo(hwnd: 8, pid: 84, title: 'Remembered Game');

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
        engineSourceFactory: ({
          required int targetPid,
          required String? launchExe,
          required String injectorPath,
          required bool lunaPcHooks,
          int? lunaCodepage,
          List<String> launchArguments = const <String>[],
          String launchWorkdir = '',
          GalJapaneseLocaleMode japaneseLocaleMode =
              kGalDefaultJapaneseLocaleMode,
        }) =>
            throw StateError('remembered safe mode must skip native engine'),
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
    final GalHookSessionController first =
        await buildController(firstEndpoints, _FakeLoopbackSource());
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
    final GalHookSessionController second =
        await buildController(secondEndpoints, secondLoopback);
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
}

class _FakeLoopbackSource extends LoopbackGalAudioSource {
  int startCalls = 0;

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
  Future<GalAudioSlice?> grabRecent(int backMs) async => GalAudioSlice(
        pcm: Uint8List(backMs * 8),
        format: const PcmFormat(
          sampleRate: 48000,
          channels: 2,
          bitsPerSample: 32,
          isFloat: true,
        ),
      );
}
