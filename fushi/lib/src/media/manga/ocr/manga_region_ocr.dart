/// 漫画框选区域的裁图、坐标平移和区域替换纯函数。
library;

import 'dart:io';
import 'dart:isolate';
import 'dart:ui' show Offset, Rect;

import 'package:image/image.dart' as img;
import 'package:path/path.dart' as p;

import 'package:fushi/src/media/manga/manga_ocr_background_job.dart';
import 'package:fushi_engine/media/manga/mokuro_payload.dart';

const String kMangaRegionCropDirName = 'page';
const String kMangaRegionCropFileName = 'region.png';
const double kMangaRegionBlockOverlapRatio = 0.5;

class MangaRegionCrop {
  const MangaRegionCrop({required this.root, required this.rect});

  final Directory root;
  final Rect rect;
  Directory get imageDir =>
      Directory(p.join(root.path, kMangaRegionCropDirName));
}

Rect clampMangaRegion(Rect box, int pageWidth, int pageHeight) {
  final int maxX = pageWidth - 1;
  final int maxY = pageHeight - 1;
  final int left = box.left.floor().clamp(0, maxX);
  final int top = box.top.floor().clamp(0, maxY);
  final int right = box.right.ceil().clamp(left + 1, pageWidth);
  final int bottom = box.bottom.ceil().clamp(top + 1, pageHeight);
  return Rect.fromLTRB(
    left.toDouble(),
    top.toDouble(),
    right.toDouble(),
    bottom.toDouble(),
  );
}

img.Image cropMangaRegion(img.Image page, Rect clamped) => img.copyCrop(
  page,
  x: clamped.left.toInt(),
  y: clamped.top.toInt(),
  width: clamped.width.toInt(),
  height: clamped.height.toInt(),
);

Future<MangaRegionCrop> cropMangaRegionToTempDir({
  required String imagePath,
  required Rect box,
  Directory? tempRoot,
}) async {
  final Directory root = await (tempRoot ?? Directory.systemTemp).createTemp(
    'fushi_manga_region_',
  );
  final String output = p.join(
    root.path,
    kMangaRegionCropDirName,
    kMangaRegionCropFileName,
  );
  try {
    final Rect rect = await Isolate.run<Rect>(
      () => _cropToFile(imagePath: imagePath, box: box, outputPath: output),
    );
    return MangaRegionCrop(root: root, rect: rect);
  } on Object {
    await deleteMangaRegionCrop(root);
    rethrow;
  }
}

Future<Rect> _cropToFile({
  required String imagePath,
  required Rect box,
  required String outputPath,
}) async {
  img.Image? page;
  try {
    page = img.decodeImage(await File(imagePath).readAsBytes());
  } on Object catch (error) {
    throw StateError('failed to decode manga page: $imagePath ($error)');
  }
  if (page == null) throw StateError('failed to decode manga page: $imagePath');
  final Rect clamped = clampMangaRegion(box, page.width, page.height);
  final File output = File(outputPath);
  await output.parent.create(recursive: true);
  await output.writeAsBytes(
    img.encodePng(cropMangaRegion(page, clamped)),
    flush: true,
  );
  return clamped;
}

Future<void> deleteMangaRegionCrop(Directory root) async {
  try {
    if (await root.exists()) await root.delete(recursive: true);
  } on Object {
    // Temporary OCR output is best-effort cleanup.
  }
}

Future<List<MokuroBlock>> collectMangaRegionOcrBlocks(
  Stream<MangaOcrBackgroundEvent> events, {
  required Offset origin,
}) async {
  MangaOcrBackgroundEvent? finished;
  await for (final MangaOcrBackgroundEvent event in events) {
    if (event.finished) finished = event;
  }
  final String? resultPath = finished?.resultPath;
  if (finished == null || resultPath == null) {
    throw StateError('region OCR ended without a result file');
  }
  final String source = await File(resultPath).readAsString();
  final MokuroPayload result = finished.external
      ? parseMokuro(source)
      : parseMangaJson(source);
  if (result.images.isEmpty) return const <MokuroBlock>[];
  return offsetMangaBlocks(result.images.first.blocks, origin);
}

List<MokuroBlock> offsetMangaBlocks(List<MokuroBlock> blocks, Offset origin) =>
    <MokuroBlock>[
      for (final MokuroBlock block in blocks)
        MokuroBlock(
          rectangle: block.rectangle.shift(MokuroPoint(origin.dx, origin.dy)),
          isVertical: block.isVertical,
          fontSize: block.fontSize,
          zIndex: block.zIndex,
          lines: block.lines,
          linesCoords: block.linesCoords == null
              ? null
              : <List<List<double>>>[
                  for (final List<List<double>> line in block.linesCoords!)
                    <List<double>>[
                      for (final List<double> point in line)
                        <double>[point[0] + origin.dx, point[1] + origin.dy],
                    ],
                ],
          regions: block.regions == null
              ? null
              : <MangaOcrTextRegion>[
                  for (final MangaOcrTextRegion region in block.regions!)
                    MangaOcrTextRegion(
                      rectangle: region.rectangle.shift(
                        MokuroPoint(origin.dx, origin.dy),
                      ),
                      utf16Start: region.utf16Start,
                      utf16End: region.utf16End,
                    ),
                ],
        ),
    ];

bool isMangaBlockInsideRegion(MokuroRect block, Rect region) {
  final double blockArea = block.width * block.height;
  if (blockArea <= 0) {
    return region.contains(Offset(block.left, block.top));
  }
  final double left = block.left > region.left ? block.left : region.left;
  final double top = block.top > region.top ? block.top : region.top;
  final double right = block.right < region.right ? block.right : region.right;
  final double bottom = block.bottom < region.bottom
      ? block.bottom
      : region.bottom;
  if (right <= left || bottom <= top) return false;
  return (right - left) * (bottom - top) >=
      blockArea * kMangaRegionBlockOverlapRatio;
}

bool isMangaBlockCoveredByRegion(MokuroRect block, Rect region) =>
    block.left >= region.left &&
    block.top >= region.top &&
    block.right <= region.right &&
    block.bottom <= region.bottom;

Rect expandMangaRegionToBlocks(Rect region, List<MokuroBlock> pageBlocks) {
  Rect expanded = region;
  for (final MokuroBlock block in pageBlocks) {
    if (isMangaBlockInsideRegion(block.rectangle, region)) {
      expanded = expanded.expandToInclude(
        Rect.fromLTRB(
          block.rectangle.left,
          block.rectangle.top,
          block.rectangle.right,
          block.rectangle.bottom,
        ),
      );
    }
  }
  return expanded;
}

MokuroImage replaceMangaPageRegion(
  MokuroImage page,
  Rect region,
  List<MokuroBlock> blocks,
) {
  final List<MokuroBlock> merged = <MokuroBlock>[
    for (final MokuroBlock block in page.blocks)
      if (!isMangaBlockCoveredByRegion(block.rectangle, region)) block,
    ...blocks,
  ];
  return MokuroImage(
    url: page.url,
    size: page.size,
    blocks: <MokuroBlock>[
      for (int index = 0; index < merged.length; index++)
        MokuroBlock(
          rectangle: merged[index].rectangle,
          isVertical: merged[index].isVertical,
          fontSize: merged[index].fontSize,
          zIndex: index,
          lines: merged[index].lines,
          linesCoords: merged[index].linesCoords,
          regions: merged[index].regions,
        ),
    ],
  );
}
