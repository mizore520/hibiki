import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:image/image.dart' as img;
import 'package:path/path.dart' as p;

import 'package:fushi/src/media/manga/manga_ocr_background_job.dart';
import 'package:fushi/src/media/manga/ocr/manga_ocr_auto_start.dart';
import 'package:fushi/src/media/manga/ocr/manga_ocr_engine.dart';
import 'package:fushi/src/media/manga/ocr/manga_region_ocr.dart';
import 'package:fushi/src/media/manga/ocr/manga_region_rescan.dart';
import 'package:fushi_engine/media/manga/mokuro_payload.dart';

String _mangaJson() => jsonEncode(<String, Object?>{
  'ocr': <String, Object?>{
    'engine': 'local_onnx',
    'engine_signature': 'sig-abc',
    'schema_version': 2,
  },
  'pages': <Object?>[
    <String, Object?>{
      'url': 'p001.png',
      'width': 1000,
      'height': 1600,
      'blocks': <Object?>[
        <String, Object?>{
          'box': <double>[120, 120, 180, 220],
          'vertical': true,
          'font_size': 24,
          'z_index': 0,
          'lines': <String>['既存ブロック'],
        },
      ],
    },
  ],
});

class _Fixture {
  _Fixture(this.dir, this.mangaJson, this.page);

  final Directory dir;
  final File mangaJson;
  final File page;
}

_Fixture _fixture() {
  final Directory dir = Directory.systemTemp.createTempSync('manga_rescan_');
  addTearDown(() {
    if (dir.existsSync()) dir.deleteSync(recursive: true);
  });
  final File mangaJson = File(p.join(dir.path, 'manga.json'))
    ..writeAsStringSync(_mangaJson());
  final img.Image image = img.Image(width: 1000, height: 1600);
  img.fill(image, color: img.ColorRgb8(255, 255, 255));
  final File page = File(p.join(dir.path, 'p001.png'))
    ..writeAsBytesSync(img.encodePng(image));
  return _Fixture(dir, mangaJson, page);
}

List<MokuroBlock> _pageBlocks(File mangaJson) =>
    parseMangaJson(mangaJson.readAsStringSync()).images.first.blocks;

MangaRegionEngineStarter _engineReturning(List<Map<String, Object?>> blocks) {
  return (String imageDirPath) async {
    final img.Image crop = img.decodePng(
      File(p.join(imageDirPath, kMangaRegionCropFileName)).readAsBytesSync(),
    )!;
    final File result = File(p.join(imageDirPath, 'result.json'))
      ..writeAsStringSync(
        jsonEncode(<String, Object?>{
          'pages': <Object?>[
            <String, Object?>{
              'url': 'region.png',
              'width': crop.width,
              'height': crop.height,
              'blocks': blocks,
            },
          ],
        }),
      );
    return MangaOcrAutoStartResult.started(
      MangaOcrBackgroundJob(
        bookKey: 'book',
        managedDirectory: imageDirPath,
        engine: MangaOcrEngineId.localOnnx,
        events: Stream<MangaOcrBackgroundEvent>.value(
          MangaOcrBackgroundEvent.finished(
            pagesTotal: 1,
            resultPath: result.path,
            external: false,
          ),
        ),
      ),
      MangaOcrEngineId.localOnnx,
    );
  };
}

void main() {
  test('引擎不可用或取消时 manga.json 零写入', () async {
    final _Fixture fixture = _fixture();
    final List<int> before = fixture.mangaJson.readAsBytesSync();
    final MangaRegionRescanOutcome unavailable = await runMangaRegionRescan(
      imagePath: fixture.page.path,
      mangaJsonPath: fixture.mangaJson.path,
      pageIndex: 0,
      box: const Rect.fromLTRB(100, 100, 200, 200),
      pageBlocks: _pageBlocks(fixture.mangaJson),
      startEngine: (String _) async =>
          const MangaOcrAutoStartResult.unavailable('模型没下', null),
      tempRoot: fixture.dir,
    );
    expect(unavailable.status, MangaRegionRescanStatus.unavailable);
    expect(fixture.mangaJson.readAsBytesSync(), before);

    final MangaRegionRescanOutcome cancelled = await runMangaRegionRescan(
      imagePath: fixture.page.path,
      mangaJsonPath: fixture.mangaJson.path,
      pageIndex: 0,
      box: const Rect.fromLTRB(100, 100, 200, 200),
      pageBlocks: _pageBlocks(fixture.mangaJson),
      startEngine: (String _) async =>
          const MangaOcrAutoStartResult.cancelled(),
      tempRoot: fixture.dir,
    );
    expect(cancelled.status, MangaRegionRescanStatus.cancelled);
    expect(fixture.mangaJson.readAsBytesSync(), before);
  });

  test('引擎返回零块时不清空既有文字层', () async {
    final _Fixture fixture = _fixture();
    final List<int> before = fixture.mangaJson.readAsBytesSync();
    final MangaRegionRescanOutcome outcome = await runMangaRegionRescan(
      imagePath: fixture.page.path,
      mangaJsonPath: fixture.mangaJson.path,
      pageIndex: 0,
      box: const Rect.fromLTRB(100, 100, 200, 200),
      pageBlocks: _pageBlocks(fixture.mangaJson),
      startEngine: _engineReturning(const <Map<String, Object?>>[]),
      tempRoot: fixture.dir,
    );
    expect(outcome.status, MangaRegionRescanStatus.empty);
    expect(fixture.mangaJson.readAsBytesSync(), before);
  });

  test('成功时整块替换、保留 OCR 元数据并交出撤销快照', () async {
    final _Fixture fixture = _fixture();
    final MangaRegionRescanOutcome outcome = await runMangaRegionRescan(
      imagePath: fixture.page.path,
      mangaJsonPath: fixture.mangaJson.path,
      pageIndex: 0,
      box: const Rect.fromLTRB(100, 100, 200, 200),
      pageBlocks: _pageBlocks(fixture.mangaJson),
      startEngine: _engineReturning(<Map<String, Object?>>[
        <String, Object?>{
          'box': <double>[20, 20, 80, 120],
          'vertical': true,
          'font_size': 12,
          'z_index': 0,
          'lines': <String>['重识别'],
        },
      ]),
      tempRoot: fixture.dir,
    );
    expect(outcome.status, MangaRegionRescanStatus.replaced);
    expect(outcome.region, const Rect.fromLTRB(100, 100, 200, 220));
    expect(outcome.previousPage!.blocks.single.lines, <String>['既存ブロック']);
    final MokuroPayload payload = parseMangaJson(
      fixture.mangaJson.readAsStringSync(),
    );
    expect(payload.images.single.blocks.single.lines, <String>['重识别']);
    expect(
      payload.images.single.blocks.single.rectangle,
      const MokuroRect.fromLTRB(120, 120, 180, 220),
    );
    expect(payload.ocr!.engineSignature, 'sig-abc');
    expect(File('${fixture.mangaJson.path}.tmp').existsSync(), isFalse);
  });
}
