/// 用用户已经选择的 OCR 引擎启动后台任务，不重复弹引擎选择向导。
///
/// 这是个人版漫画阅读器的「点击即识别」入口。任务本身仍使用作者当前的
/// [MangaOcrJobSpec] / [mangaOcrBackgroundEvents]，因此不会复制或绕开新的引擎链。
library;

import 'package:flutter/widgets.dart';

import 'package:fushi_core/fushi_core.dart';
import 'package:fushi/src/media/manga/manga_ocr_background_job.dart';
import 'package:fushi/src/media/manga/manga_ocr_job_stream.dart';
import 'package:fushi/src/media/manga/manga_ocr_wizard_engines.dart';
import 'package:fushi/src/media/manga/ocr/google_lens_disclosure.dart';
import 'package:fushi/src/media/manga/ocr/manga_ocr_engine.dart';
import 'package:fushi/src/sync/interconnect_manga_ocr_client.dart';
import 'package:fushi/utils.dart';

class MangaOcrAutoStartResult {
  const MangaOcrAutoStartResult.started(this.job, this.engine)
    : cancelled = false,
      unavailableReason = null;

  const MangaOcrAutoStartResult.cancelled()
    : job = null,
      engine = null,
      cancelled = true,
      unavailableReason = null;

  const MangaOcrAutoStartResult.unavailable(String reason, this.engine)
    : job = null,
      cancelled = false,
      unavailableReason = reason;

  final MangaOcrBackgroundJob? job;
  final MangaOcrEngineId? engine;
  final bool cancelled;
  final String? unavailableReason;

  bool get started => job != null;
}

Future<List<MangaOcrEngineCapability>> probeMangaOcrCapabilities(
  MangaOcrWizardEngines engines,
) async {
  bool builtin = false;
  if (engines.service.isSupportedPlatform) {
    try {
      builtin = (await engines.service.modelStatus()).allReady;
    } on Object {
      builtin = false;
    }
  }
  bool system = false;
  if (engines.systemOcrRunner != null) {
    try {
      system = await engines.systemOcrRunner!.isAvailable();
    } on Object {
      system = false;
    }
  }
  bool external = false;
  if (engines.externalRunner != null) {
    try {
      external = (await engines.externalRunner!.probe()) != null;
    } on Object {
      external = false;
    }
  }
  MangaOcrRemoteTarget? remote;
  if (engines.remoteRunner != null) {
    try {
      remote = await engines.remoteRunner!.probe();
    } on Object {
      remote = null;
    }
  }
  return <MangaOcrEngineCapability>[
    MangaOcrEngineCapability(
      id: MangaOcrEngineId.localOnnx,
      supported: engines.service.isSupportedPlatform,
      ready: builtin,
      requiresNetwork: false,
      uploadsImages: false,
      supportsIncremental: true,
    ),
    MangaOcrEngineCapability(
      id: MangaOcrEngineId.systemOcr,
      supported: engines.systemOcrRunner != null,
      ready: system,
      requiresNetwork: false,
      uploadsImages: false,
      supportsIncremental: true,
    ),
    MangaOcrEngineCapability(
      id: MangaOcrEngineId.googleLens,
      supported: engines.lensRunner != null,
      ready: engines.lensRunner != null,
      requiresNetwork: true,
      uploadsImages: true,
      supportsIncremental: true,
    ),
    MangaOcrEngineCapability(
      id: MangaOcrEngineId.externalMokuro,
      supported: engines.externalRunner != null,
      ready: external,
      requiresNetwork: false,
      uploadsImages: false,
      supportsIncremental: false,
    ),
    MangaOcrEngineCapability(
      id: MangaOcrEngineId.pairedHost,
      supported: engines.remoteRunner != null,
      ready: remote?.capability.usable ?? false,
      requiresNetwork: true,
      uploadsImages: true,
      supportsIncremental: false,
    ),
  ];
}

String mangaOcrEngineUnavailableReason(MangaOcrEngineId engine) {
  switch (engine) {
    case MangaOcrEngineId.localOnnx:
      return t.manga_ocr_model_status_missing;
    case MangaOcrEngineId.systemOcr:
      return t.manga_ocr_engine_system_unavailable;
    case MangaOcrEngineId.googleLens:
      return t.manga_ocr_engine_none;
    case MangaOcrEngineId.externalMokuro:
      return t.manga_ocr_external_not_found;
    case MangaOcrEngineId.pairedHost:
      return t.manga_remote_ocr_no_host;
  }
}

Future<MangaOcrAutoStartResult> startMangaOcrWithPreferredEngine({
  required BuildContext context,
  required String bookKey,
  required String imageDirPath,
  required int startPage,
  required String lensLanguage,
  FushiDatabase? db,
  MangaOcrWizardEngines? enginesOverride,
  GoogleLensDisclosureGate? lensDisclosureGate,
  MangaOcrRemoteRunner? remoteRunnerOverride,
}) async {
  if (enginesOverride == null && db == null) {
    throw ArgumentError('db is required when enginesOverride is null');
  }
  final MangaOcrWizardEngines engines =
      enginesOverride ??
      MangaOcrWizardEngines.resolve(
        context: context,
        db: db!,
        remoteRunnerOverride: remoteRunnerOverride,
      );
  final List<MangaOcrEngineCapability> capabilities =
      await probeMangaOcrCapabilities(engines);
  final MangaOcrEnginePreference preference =
      MangaOcrEnginePreferenceKey.fromKey(
        engines.initialEnginePreference ?? kDefaultMangaOcrEnginePreference.key,
      );
  final MangaOcrEngineId? engine = resolveMangaOcrEngine(
    preference: preference,
    hasExistingMetadata: false,
    capabilities: capabilities,
  );
  if (engine == null) {
    return MangaOcrAutoStartResult.unavailable(t.manga_ocr_engine_none, null);
  }
  final MangaOcrEngineCapability? capability = capabilities
      .where((MangaOcrEngineCapability item) => item.id == engine)
      .firstOrNull;
  if (capability == null || !capability.available) {
    return MangaOcrAutoStartResult.unavailable(
      mangaOcrEngineUnavailableReason(engine),
      engine,
    );
  }
  if (engine == MangaOcrEngineId.googleLens) {
    if (!context.mounted) return const MangaOcrAutoStartResult.cancelled();
    final GoogleLensDisclosureGate gate =
        lensDisclosureGate ?? ensureGoogleLensDisclosure;
    if (!await gate(context)) return const MangaOcrAutoStartResult.cancelled();
  }
  MangaOcrRemoteTarget? remoteTarget;
  if (engine == MangaOcrEngineId.pairedHost) {
    try {
      remoteTarget = await engines.remoteRunner!.probe();
    } on Object {
      remoteTarget = null;
    }
    if (remoteTarget == null) {
      return MangaOcrAutoStartResult.unavailable(
        t.manga_remote_ocr_no_host,
        engine,
      );
    }
  }
  return MangaOcrAutoStartResult.started(
    MangaOcrBackgroundJob(
      bookKey: bookKey,
      managedDirectory: imageDirPath,
      engine: engine,
      events: mangaOcrBackgroundEvents(
        MangaOcrJobSpec(
          engine: engine,
          engines: engines,
          imageDirPath: imageDirPath,
          lensLanguage: lensLanguage,
          startPage: startPage,
          remoteTarget: remoteTarget,
        ),
      ),
    ),
    engine,
  );
}
