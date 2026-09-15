import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fushi/src/media/manga/manga_ocr_wizard_engines.dart';
import 'package:fushi/src/media/manga/ocr/google_lens_ocr_service.dart';
import 'package:fushi/src/media/manga/ocr/manga_ocr_auto_start.dart';
import 'package:fushi/src/media/manga/ocr/manga_ocr_engine.dart';
import 'package:fushi_engine/ocr/manga_ocr_service.dart';
import 'package:fushi/src/sync/interconnect_manga_ocr_client.dart';

/// 点击即识别不弹引擎选择框，所以偏好分支必须明确：尤其不能在用户不知情时
/// 从离线引擎回退到会上传图片的 Google Lens。
class _FakeOcrService implements MangaOcrService {
  _FakeOcrService({this.supported = true, this.ready = false});

  final bool supported;
  final bool ready;

  @override
  bool get isSupportedPlatform => supported;

  @override
  Future<MangaOcrModelStatus> modelStatus() async => MangaOcrModelStatus(
    detectorReady: ready,
    recognizerReady: ready,
    diskBytes: 0,
    totalBytes: 100,
  );

  @override
  Stream<MangaOcrDownloadEvent> downloadModels() =>
      const Stream<MangaOcrDownloadEvent>.empty();

  @override
  Future<int> deleteModels() async => 0;

  @override
  Stream<MangaOcrVolumeEvent> ocrFolder({
    required String imageDirPath,
    String? volumeTitle,
  }) => const Stream<MangaOcrVolumeEvent>.empty();
}

class _FakeLensRunner implements GoogleLensMangaOcrRunner {
  @override
  Stream<MangaOcrVolumeEvent> ocrFolder({
    required String imageDirPath,
    String? volumeTitle,
    int startPage = 0,
    bool onlyMissing = true,
    required String language,
  }) => const Stream<MangaOcrVolumeEvent>.empty();

  @override
  Future<void> clearCache(String imageDirPath) async {}
}

class _FakeRemoteRunner implements MangaOcrRemoteRunner {
  _FakeRemoteRunner(this.target);

  final MangaOcrRemoteTarget? target;

  @override
  Future<MangaOcrRemoteTarget?> probe() async => target;

  @override
  Stream<MangaOcrRemoteEvent> run({
    required MangaOcrRemoteTarget target,
    required String imageDirPath,
    String? volumeTitle,
  }) => const Stream<MangaOcrRemoteEvent>.empty();
}

MangaOcrWizardEngines engines({
  bool localReady = false,
  bool localSupported = true,
  bool lens = true,
  MangaOcrRemoteTarget? remoteTarget,
  bool hasRemoteRunner = false,
  String? preference,
}) => MangaOcrWizardEngines(
  service: _FakeOcrService(supported: localSupported, ready: localReady),
  lensRunner: lens ? _FakeLensRunner() : null,
  remoteRunner: hasRemoteRunner ? _FakeRemoteRunner(remoteTarget) : null,
  initialEnginePreference: preference,
);

void main() {
  late BuildContext context;

  Future<void> pumpContext(WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (BuildContext value) {
            context = value;
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }

  Future<MangaOcrAutoStartResult> start(
    MangaOcrWizardEngines value, {
    Future<bool> Function(BuildContext)? gate,
  }) => startMangaOcrWithPreferredEngine(
    context: context,
    bookKey: 'book',
    imageDirPath: '/tmp/manga',
    startPage: 7,
    lensLanguage: 'ja',
    enginesOverride: value,
    lensDisclosureGate: gate ?? (BuildContext _) async => true,
  );

  testWidgets('明确偏好 Google Lens 时同意上传才启动该引擎', (WidgetTester tester) async {
    await pumpContext(tester);
    final MangaOcrAutoStartResult result = await start(
      engines(preference: MangaOcrEnginePreference.googleLens.key),
    );
    expect(result.started, isTrue);
    expect(result.engine, MangaOcrEngineId.googleLens);
    expect(result.job!.bookKey, 'book');
  });

  testWidgets('取消 Google Lens 告知只返回 cancelled，不静默换引擎', (
    WidgetTester tester,
  ) async {
    await pumpContext(tester);
    final MangaOcrAutoStartResult result = await start(
      engines(preference: MangaOcrEnginePreference.googleLens.key),
      gate: (BuildContext _) async => false,
    );
    expect(result.started, isFalse);
    expect(result.cancelled, isTrue);
    expect(result.unavailableReason, isNull);
  });

  testWidgets('本地模型未就绪时明确返回不可用，不启动失败任务', (WidgetTester tester) async {
    await pumpContext(tester);
    final MangaOcrAutoStartResult result = await start(
      engines(preference: MangaOcrEnginePreference.localOnnx.key),
    );
    expect(result.started, isFalse);
    expect(result.cancelled, isFalse);
    expect(result.engine, MangaOcrEngineId.localOnnx);
    expect(result.unavailableReason, isNotNull);
  });

  testWidgets('auto 只选择就绪的离线引擎，绝不自动上传 Lens', (WidgetTester tester) async {
    await pumpContext(tester);
    final MangaOcrAutoStartResult none = await start(
      engines(preference: MangaOcrEnginePreference.auto.key),
      gate: (BuildContext _) async => throw StateError('auto 不得进入 Lens 上传告知'),
    );
    expect(none.started, isFalse);
    expect(none.engine, isNull);

    final MangaOcrAutoStartResult local = await start(
      engines(localReady: true, preference: MangaOcrEnginePreference.auto.key),
    );
    expect(local.started, isTrue);
    expect(local.engine, MangaOcrEngineId.localOnnx);
  });

  testWidgets('能力探测反映本地平台不支持', (WidgetTester tester) async {
    await pumpContext(tester);
    final List<MangaOcrEngineCapability> capabilities =
        await probeMangaOcrCapabilities(engines(localSupported: false));
    final MangaOcrEngineCapability local = capabilities.firstWhere(
      (MangaOcrEngineCapability value) =>
          value.id == MangaOcrEngineId.localOnnx,
    );
    expect(local.supported, isFalse);
    expect(local.available, isFalse);
  });
}
