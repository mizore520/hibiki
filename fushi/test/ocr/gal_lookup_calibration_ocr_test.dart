import 'dart:typed_data';
import 'dart:ui';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:fushi/src/lookup/gal_lookup_calibration_capture.dart';
import 'package:fushi/src/lookup/gal_lookup_calibration_draft.dart';
import 'package:fushi/src/lookup/gal_lookup_calibration_image_fit.dart';
import 'package:fushi/src/lookup/gal_lookup_calibration_preview.dart';
import 'package:fushi/src/ocr/gal_lookup_calibration_ocr.dart';
import 'package:fushi/src/lookup/gal_lookup_surface_profile.dart';
import 'package:fushi_engine/ocr/manga_ocr_model_manifest.dart';
import 'package:fushi_engine/ocr/ocr_types.dart';

void main() {
  test('aligns Hook text to OCR lines and keeps UTF-16 glyph offsets', () {
    final GalCalibrationOcrAlignment alignment = alignGalCalibrationOcrLines(
      sourceText: '「あいうえお」\nかきくけこ',
      lines: <GalCalibrationOcrLine>[
        const GalCalibrationOcrLine(
          text: '「あいうえお」',
          rect: OcrRect(left: 100, top: 200, right: 340, bottom: 240),
          score: 0.98,
        ),
        const GalCalibrationOcrLine(
          text: 'かきくけこ',
          rect: OcrRect(left: 120, top: 250, right: 320, bottom: 290),
          score: 0.96,
        ),
      ],
    );

    expect(alignment.accepted, isTrue);
    expect(alignment.lines, hasLength(2));
    expect(alignment.lines[0].glyphs, hasLength(7));
    expect(alignment.lines[1].glyphs, hasLength(5));
    expect(alignment.lines[0].glyphs.first.sourceIndex, 0);
    expect(alignment.lines[1].glyphs.first.sourceIndex, 8);
    expect(alignment.lines[0].glyphs.first.cellOffset, 0);
    expect(alignment.lines[1].glyphs.first.cellOffset, 0);
  });

  test('keeps geometry when OCR substitutes one character', () {
    final GalCalibrationOcrAlignment alignment = alignGalCalibrationOcrLines(
      sourceText: 'これはテストです',
      lines: <GalCalibrationOcrLine>[
        const GalCalibrationOcrLine(
          text: 'これはテス卜です',
          rect: OcrRect(left: 20, top: 30, right: 380, bottom: 70),
          score: 0.9,
        ),
      ],
    );

    expect(alignment.accepted, isTrue);
    expect(alignment.lines.single.glyphs, hasLength(8));
    expect(alignment.confidence, greaterThan(0.8));
  });

  test('ignores an unrelated name or button inside a rough crop', () {
    final GalCalibrationOcrAlignment alignment = alignGalCalibrationOcrLines(
      sourceText: 'これはテストです',
      lines: <GalCalibrationOcrLine>[
        const GalCalibrationOcrLine(
          text: '白崎',
          rect: OcrRect(left: 10, top: 10, right: 90, bottom: 40),
          score: 0.99,
        ),
        const GalCalibrationOcrLine(
          text: 'これはテストです',
          rect: OcrRect(left: 20, top: 100, right: 380, bottom: 140),
          score: 0.99,
        ),
        const GalCalibrationOcrLine(
          text: 'AUTO SKIP',
          rect: OcrRect(left: 400, top: 200, right: 580, bottom: 230),
          score: 0.99,
        ),
      ],
    );

    expect(alignment.accepted, isTrue);
    expect(alignment.lines, hasLength(1));
    expect(alignment.lines.single.rect.top, 100);
  });

  test('does not treat the full manga OCR pack as calibration dependency', () {
    expect(kGalCalibrationOcrModelManifest, hasLength(3));
    expect(
      kGalCalibrationOcrModelManifest
          .map((MangaOcrModelFile file) => file.expectedBytes)
          .reduce((int a, int b) => a + b),
      lessThan(32 * 1000 * 1000),
    );
  });

  test('model status counts ready files and resumable parts', () async {
    final Directory temp = await Directory.systemTemp.createTemp(
      'gal-calibration-ocr-test-',
    );
    addTearDown(() => temp.delete(recursive: true));
    final List<MangaOcrModelFile> manifest = <MangaOcrModelFile>[
      const MangaOcrModelFile(
        fileName: 'det.onnx',
        url: 'http://127.0.0.1/det.onnx',
        expectedBytes: 10,
        role: MangaOcrModelRole.recognizer,
      ),
      const MangaOcrModelFile(
        fileName: 'rec.onnx',
        url: 'http://127.0.0.1/rec.onnx',
        expectedBytes: 20,
        role: MangaOcrModelRole.recognizer,
      ),
    ];
    await File('${temp.path}/det.onnx').writeAsBytes(List<int>.filled(10, 1));
    await File(
      '${temp.path}/rec.onnx.part',
    ).writeAsBytes(List<int>.filled(7, 1));
    final GalCalibrationOcrModelStore store = GalCalibrationOcrModelStore(
      directoryProvider: () async => temp,
      manifest: manifest,
    );

    final GalCalibrationOcrModelStatus status = await store.status();
    expect(status.ready, isFalse);
    expect(status.obtainedBytes, 17);
    expect(status.diskBytes, 17);
    expect(status.totalBytes, 30);
  });

  test('normalizes OCR geometry across training resolutions', () async {
    GalCalibrationOcrMatchedLine line({
      required int lineIndex,
      required int cellCount,
      required int indent,
      required double origin,
      required double top,
      required double pitch,
      required double height,
    }) {
      return GalCalibrationOcrMatchedLine(
        sourceStart: lineIndex * 5,
        sourceEnd: lineIndex * 5 + cellCount,
        cellCount: cellCount,
        lineIndex: lineIndex,
        rect: OcrRect(
          left: origin + indent * pitch,
          top: top,
          right: origin + (indent + cellCount) * pitch,
          bottom: top + height,
        ),
        glyphs: [
          for (int offset = 0; offset < cellCount; offset++)
            GalCalibrationOcrGlyph(
              sourceIndex: lineIndex * 5 + offset,
              charLength: 1,
              cellOffset: offset,
              lineIndex: lineIndex,
              rect: OcrRect(
                left: origin + (indent + offset) * pitch,
                top: top,
                right: origin + (indent + offset + 1) * pitch,
                bottom: top + height,
              ),
              confidence: 1,
            ),
        ],
      );
    }

    GalCalibrationOcrAlignment alignment({required double scale}) {
      final double pitch = 40 * scale;
      final double height = 36 * scale;
      return GalCalibrationOcrAlignment(
        lines: [
          line(
            lineIndex: 0,
            cellCount: 5,
            indent: 0,
            origin: 100 * scale,
            top: 300 * scale,
            pitch: pitch,
            height: height,
          ),
          line(
            lineIndex: 1,
            cellCount: 4,
            indent: 1,
            origin: 100 * scale,
            top: 348 * scale,
            pitch: pitch,
            height: height,
          ),
        ],
        confidence: 1,
      );
    }

    GalCalibrationSample sample(GalLookupReferenceClientV1 client) =>
        GalCalibrationSample(
          capture: GalLookupCalibrationCapture(
            sourceText: 'あいうえおかきくけこ',
            pngBytes: Uint8List.fromList(const <int>[1]),
            referenceClient: client,
            exePath: 'game.exe',
            exeSha256: 'a' * 64,
            sessionEpoch: 1,
            occurrenceId: 'occurrence',
            targetHwnd: 1,
            capturedAt: DateTime.utc(2026),
            selectedThreadKey: 'thread',
          ),
        );

    const GalLookupReferenceClientV1 clientA = GalLookupReferenceClientV1(
      widthPx: 1000,
      heightPx: 500,
      dpi: 96,
    );
    const GalLookupReferenceClientV1 clientB = GalLookupReferenceClientV1(
      widthPx: 2000,
      heightPx: 1000,
      dpi: 96,
    );
    final GalLookupCalibrationDraft draft = GalLookupCalibrationDraft(
      rect: const GalLookupNormalizedRectV1(
        left: 0,
        top: 0,
        width: 1,
        height: 1,
      ),
      layout: const GalLookupTextLayoutV1(),
      samples: [sample(clientA), sample(clientB)],
    );
    final GalCalibrationImageFit result = await fitGalCalibrationOcrGrid(
      draft,
      [alignment(scale: 1), alignment(scale: 2)],
      build:
          ({
            required String text,
            required GalLookupReferenceClientV1 client,
            required GalLookupNormalizedRectV1 rect,
            required GalLookupTextLayoutV1 layout,
          }) async => const GalCalibrationPreview(
            boxes: [GalCalibrationBox(0, 1, Rect.fromLTWH(0, 0, 1, 1))],
          ),
    );

    expect(result.draft, isNotNull);
    expect(result.draft!.layout.cellGrid!.columns, 5);
    expect(result.draft!.layout.cellGrid!.continuationIndent, 1);
    expect(
      result.draft!.layout.cellGrid!.advancePerClientHeight,
      closeTo(.08, 1e-9),
    );
    expect(result.draft!.rect.left, closeTo(.1, 1e-9));
    expect(result.draft!.rect.top, closeTo(.6, 1e-9));
  });
}
