import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:fushi/src/lookup/gal_lookup_surface_profile.dart';
import 'package:fushi/src/ocr/gal_lookup_calibration_ocr.dart';
import 'package:fushi_engine/ocr/ocr_types.dart';
import 'package:image/image.dart' as img;

const String _text = '日月山川田目口中木本大小';
const GalLookupNormalizedRectV1 _search = GalLookupNormalizedRectV1(
  left: 0,
  top: 0,
  width: 1,
  height: 1,
);

GalCalibrationOcrAlignment _alignment() => GalCalibrationOcrAlignment(
  confidence: .99,
  lines: <GalCalibrationOcrMatchedLine>[
    GalCalibrationOcrMatchedLine(
      sourceStart: 0,
      sourceEnd: _text.length,
      cellCount: _text.length,
      lineIndex: 0,
      rect: const OcrRect(left: 22, top: 9, right: 284, bottom: 41),
      glyphs: <GalCalibrationOcrGlyph>[
        for (int i = 0; i < _text.length; i++)
          GalCalibrationOcrGlyph(
            sourceIndex: i,
            charLength: 1,
            cellOffset: i,
            lineIndex: 0,
            confidence: .99,
            // Biased CTC positions drift from actual pitch 22 and center 31.
            rect: OcrRect(
              left: 33 + i * 21.7,
              top: 9,
              right: 35 + i * 21.7,
              bottom: 41,
            ),
          ),
      ],
    ),
  ],
);

img.Image _strokes({bool dark = false}) {
  final img.Image image = img.Image(width: 305, height: 55);
  img.fill(
    image,
    color: dark ? img.ColorRgb8(220, 225, 230) : img.ColorRgb8(38, 53, 70),
  );
  final img.Color ink = dark
      ? img.ColorRgb8(20, 30, 40)
      : img.ColorRgb8(241, 235, 209);
  for (int i = 0; i < _text.length; i++) {
    final int left = 24 + i * 22;
    // Synthetic varied strokes with known bounding boxes, not font/OCR output.
    img.fillRect(image, x1: left, y1: 14, x2: left + 2, y2: 35, color: ink);
    img.fillRect(
      image,
      x1: left + 11,
      y1: 14,
      x2: left + 13,
      y2: 35,
      color: ink,
    );
    img.fillRect(
      image,
      x1: left,
      y1: 17 + i % 3 * 5,
      x2: left + 13,
      y2: 19 + i % 3 * 5,
      color: ink,
    );
  }
  return image;
}

GalCalibrationOcrAlignment _refine(img.Image image) =>
    refineGalCalibrationOcrGeometry((
      pngBytes: Uint8List.fromList(img.encodePng(image)),
      text: _text,
      searchRect: _search,
      alignment: _alignment(),
    ));

void main() {
  for (final bool dark in <bool>[false, true]) {
    test(
      'pixel evidence removes CTC shift and drift with ${dark ? 'dark' : 'colored'} strokes',
      () {
        final GalCalibrationOcrAlignment refined = _refine(
          _strokes(dark: dark),
        );
        expect(refined.accepted, isTrue);
        final List<GalCalibrationOcrGlyph> measured = refined
            .lines
            .single
            .glyphs
            .where((GalCalibrationOcrGlyph g) => g.inkMeasured)
            .toList();
        expect(measured.length, greaterThanOrEqualTo(10));
        for (final GalCalibrationOcrGlyph g in measured) {
          expect(g.rect.centerX, closeTo(31 + g.cellOffset * 22, .6));
          expect(g.rect.centerY, closeTo(25, .6));
        }
      },
    );
  }
  test('uniform panel cannot pass as measured character geometry', () {
    final img.Image panel = img.Image(width: 305, height: 55);
    img.fill(panel, color: img.ColorRgb8(180, 200, 220));
    final GalCalibrationOcrAlignment result = _refine(panel);
    expect(result.accepted, isFalse);
    expect(result.reason, 'ocr_ink_geometry_weak');
  });
  test('repeated background tiles cannot explain distinct Hook characters', () {
    final img.Image panel = img.Image(width: 305, height: 55);
    img.fill(panel, color: img.ColorRgb8(38, 53, 70));
    for (int i = 0; i < _text.length; i++) {
      img.fillRect(
        panel,
        x1: 24 + i * 22,
        y1: 14,
        x2: 37 + i * 22,
        y2: 35,
        color: img.ColorRgb8(240, 230, 220),
      );
    }
    expect(_refine(panel).accepted, isFalse);
  });
  test('content outside the explicit crop supplies no evidence', () {
    final GalCalibrationOcrAlignment result = refineGalCalibrationOcrGeometry((
      pngBytes: Uint8List.fromList(img.encodePng(_strokes())),
      text: _text,
      searchRect: const GalLookupNormalizedRectV1(
        left: 0,
        top: .75,
        width: 1,
        height: .25,
      ),
      alignment: _alignment(),
    ));
    expect(result.accepted, isFalse);
  });
  test('an edge-clipped anchor leaves the interior geometry usable', () {
    final GalCalibrationOcrAlignment result = refineGalCalibrationOcrGeometry((
      pngBytes: Uint8List.fromList(img.encodePng(_strokes())),
      text: _text,
      searchRect: const GalLookupNormalizedRectV1(
        left: .08,
        top: 0,
        width: .92,
        height: 1,
      ),
      alignment: _alignment(),
    ));
    expect(result.accepted, isTrue);
    expect(
      result.lines.single.glyphs
          .where((GalCalibrationOcrGlyph g) => g.sourceIndex > 0)
          .any((GalCalibrationOcrGlyph g) => g.inkMeasured),
      isTrue,
    );
  });
}
