/// 框选区域重识别的无 UI 编排层。
library;

import 'dart:io';
import 'dart:ui' show Rect;

import 'package:fushi/src/media/manga/manga_json_writeback.dart';
import 'package:fushi_engine/media/manga/mokuro_payload.dart';
import 'package:fushi/src/media/manga/ocr/manga_ocr_auto_start.dart';
import 'package:fushi/src/media/manga/ocr/manga_region_ocr.dart';

typedef MangaRegionEngineStarter =
    Future<MangaOcrAutoStartResult> Function(String imageDirPath);

enum MangaRegionRescanStatus { unavailable, cancelled, empty, replaced }

class MangaRegionRescanOutcome {
  const MangaRegionRescanOutcome.unavailable(this.unavailableReason)
    : status = MangaRegionRescanStatus.unavailable,
      payload = null,
      previousPage = null,
      region = null;
  const MangaRegionRescanOutcome.cancelled()
    : status = MangaRegionRescanStatus.cancelled,
      unavailableReason = null,
      payload = null,
      previousPage = null,
      region = null;
  const MangaRegionRescanOutcome.empty()
    : status = MangaRegionRescanStatus.empty,
      unavailableReason = null,
      payload = null,
      previousPage = null,
      region = null;
  const MangaRegionRescanOutcome.replaced({
    required this.payload,
    required this.previousPage,
    required this.region,
  }) : status = MangaRegionRescanStatus.replaced,
       unavailableReason = null;

  final MangaRegionRescanStatus status;
  final String? unavailableReason;
  final MokuroPayload? payload;
  final MokuroImage? previousPage;
  final Rect? region;
}

Future<MangaRegionRescanOutcome> runMangaRegionRescan({
  required String imagePath,
  required String mangaJsonPath,
  required int pageIndex,
  required Rect box,
  required List<MokuroBlock> pageBlocks,
  required MangaRegionEngineStarter startEngine,
  void Function()? onEngineStarted,
  void Function()? onBeforeWriteback,
  Directory? tempRoot,
}) async {
  final MangaRegionCrop crop = await cropMangaRegionToTempDir(
    imagePath: imagePath,
    box: expandMangaRegionToBlocks(box, pageBlocks),
    tempRoot: tempRoot,
  );
  try {
    final MangaOcrAutoStartResult start = await startEngine(crop.imageDir.path);
    if (!start.started) {
      return start.cancelled
          ? const MangaRegionRescanOutcome.cancelled()
          : MangaRegionRescanOutcome.unavailable(start.unavailableReason);
    }
    onEngineStarted?.call();
    final List<MokuroBlock> blocks = await collectMangaRegionOcrBlocks(
      start.job!.events,
      origin: crop.rect.topLeft,
    );
    if (blocks.isEmpty) return const MangaRegionRescanOutcome.empty();
    onBeforeWriteback?.call();
    final MangaRegionReplaceResult replaced = await replaceMangaBlocksInRegion(
      mangaJsonPath: mangaJsonPath,
      pageIndex: pageIndex,
      region: crop.rect,
      blocks: blocks,
    );
    return MangaRegionRescanOutcome.replaced(
      payload: replaced.payload,
      previousPage: replaced.previousPage,
      region: crop.rect,
    );
  } finally {
    await deleteMangaRegionCrop(crop.root);
  }
}
