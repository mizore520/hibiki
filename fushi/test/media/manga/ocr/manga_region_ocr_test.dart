import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:image/image.dart' as img;
import 'package:path/path.dart' as p;

import 'package:fushi/src/media/manga/manga_ocr_background_job.dart';
import 'package:fushi/src/media/manga/ocr/manga_region_ocr.dart';
import 'package:fushi_engine/media/manga/mokuro_payload.dart';

MokuroRect _mrect(Rect value) =>
    MokuroRect.fromLTRB(value.left, value.top, value.right, value.bottom);

MokuroBlock _block(
  Rect rect,
  String text, {
  int zIndex = 0,
  List<MangaOcrTextRegion>? regions,
  List<List<List<double>>>? linesCoords,
}) {
  return MokuroBlock(
    rectangle: _mrect(rect),
    isVertical: rect.height > rect.width,
    fontSize: 24,
    zIndex: zIndex,
    lines: <String>[text],
    regions: regions,
    linesCoords: linesCoords,
  );
}

Directory _tempRoot(String prefix) {
  final Directory dir = Directory.systemTemp.createTempSync(prefix);
  addTearDown(() {
    if (dir.existsSync()) dir.deleteSync(recursive: true);
  });
  return dir;
}

void main() {
  test('clampMangaRegion 向外取整并 clamp 到页内至少一像素', () {
    expect(
      clampMangaRegion(
        const Rect.fromLTRB(10.4, 20.6, 110.2, 220.1),
        1000,
        1600,
      ),
      const Rect.fromLTRB(10, 20, 111, 221),
    );
    expect(
      clampMangaRegion(
        const Rect.fromLTRB(999.5, 1599.5, 999.6, 1599.6),
        1000,
        1600,
      ),
      const Rect.fromLTRB(999, 1599, 1000, 1600),
    );
  });

  test('裁图落在临时根/page/region.png，失败时清理目录', () async {
    final Directory root = _tempRoot('manga_region_');
    final img.Image page = img.Image(width: 300, height: 200);
    img.fill(page, color: img.ColorRgb8(255, 255, 255));
    final File source = File(p.join(root.path, 'p001.png'))
      ..writeAsBytesSync(img.encodePng(page));
    final MangaRegionCrop crop = await cropMangaRegionToTempDir(
      imagePath: source.path,
      box: const Rect.fromLTRB(20.5, 30.2, 120.4, 90.9),
      tempRoot: root,
    );
    expect(crop.rect, const Rect.fromLTRB(20, 30, 121, 91));
    expect(
      File(p.join(crop.imageDir.path, kMangaRegionCropFileName)).existsSync(),
      isTrue,
    );
    await deleteMangaRegionCrop(crop.root);
    expect(crop.root.existsSync(), isFalse);
  });

  test('offsetMangaBlocks 同时平移块、字符区域和行多边形', () {
    final List<MokuroBlock> moved = offsetMangaBlocks(<MokuroBlock>[
      _block(
        const Rect.fromLTRB(1, 2, 11, 42),
        'ab',
        regions: <MangaOcrTextRegion>[
          MangaOcrTextRegion(
            rectangle: _mrect(const Rect.fromLTRB(1, 2, 11, 22)),
            utf16Start: 0,
            utf16End: 1,
          ),
        ],
        linesCoords: <List<List<double>>>[
          <List<double>>[
            <double>[1, 2],
            <double>[11, 42],
          ],
        ],
      ),
    ], const Offset(100, 200));
    final MokuroBlock block = moved.single;
    expect(block.rectangle, _mrect(const Rect.fromLTRB(101, 202, 111, 242)));
    expect(
      block.regions!.single.rectangle,
      _mrect(const Rect.fromLTRB(101, 202, 111, 222)),
    );
    expect(block.linesCoords, <List<List<double>>>[
      <List<double>>[
        <double>[101, 202],
        <double>[111, 242],
      ],
    ]);
  });

  test('意图判据允许过半重叠，落盘判据只删除完整覆盖块', () {
    const Rect region = Rect.fromLTRB(100, 100, 200, 200);
    expect(
      isMangaBlockInsideRegion(
        _mrect(const Rect.fromLTRB(150, 150, 250, 190)),
        region,
      ),
      isTrue,
    );
    expect(
      isMangaBlockCoveredByRegion(
        _mrect(const Rect.fromLTRB(110, 110, 190, 200.5)),
        region,
      ),
      isFalse,
    );
    expect(
      isMangaBlockCoveredByRegion(
        _mrect(const Rect.fromLTRB(110, 110, 190, 190)),
        region,
      ),
      isTrue,
    );
  });

  test('扩框覆盖被圈中的整块，替换后保留区域外顺序并重编 z-index', () {
    final MokuroBlock bubble = _block(
      const Rect.fromLTRB(120, 120, 180, 220),
      '旧',
    );
    final Rect expanded = expandMangaRegionToBlocks(
      const Rect.fromLTRB(100, 100, 200, 200),
      <MokuroBlock>[bubble],
    );
    expect(expanded, const Rect.fromLTRB(100, 100, 200, 220));

    final MokuroImage page = MokuroImage(
      url: 'p001.jpg',
      size: const MokuroSize(1000, 1600),
      blocks: <MokuroBlock>[
        _block(const Rect.fromLTRB(0, 0, 50, 50), '外', zIndex: 4),
        bubble,
      ],
    );
    final MokuroImage replaced = replaceMangaPageRegion(
      page,
      expanded,
      <MokuroBlock>[_block(const Rect.fromLTRB(120, 120, 180, 220), '新')],
    );
    expect(
      replaced.blocks.map((MokuroBlock value) => value.lines.single),
      <String>['外', '新'],
    );
    expect(replaced.blocks.map((MokuroBlock value) => value.zIndex), <int>[
      0,
      1,
    ]);
  });

  test('collectMangaRegionOcrBlocks 解析结果并平移到页坐标', () async {
    final Directory root = _tempRoot('manga_region_result_');
    final File result = File(p.join(root.path, 'manga.json'))
      ..writeAsStringSync(
        jsonEncode(<String, Object?>{
          'pages': <Object?>[
            <String, Object?>{
              'url': 'region.png',
              'width': 100,
              'height': 100,
              'blocks': <Object?>[
                <String, Object?>{
                  'box': <double>[10, 5, 40, 45],
                  'vertical': true,
                  'font_size': 12,
                  'z_index': 0,
                  'lines': <String>['こんにちは'],
                },
              ],
            },
          ],
        }),
      );
    final List<MokuroBlock> blocks = await collectMangaRegionOcrBlocks(
      Stream<MangaOcrBackgroundEvent>.fromIterable(<MangaOcrBackgroundEvent>[
        MangaOcrBackgroundEvent.finished(
          pagesTotal: 1,
          resultPath: result.path,
          external: false,
        ),
      ]),
      origin: const Offset(300, 400),
    );
    expect(
      blocks.single.rectangle,
      _mrect(const Rect.fromLTRB(310, 405, 340, 445)),
    );
    expect(blocks.single.lines, <String>['こんにちは']);
  });
}
