import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:fushi/src/lookup/gal_lookup_calibration_draft.dart';
import 'package:fushi/src/lookup/gal_lookup_calibration_preview.dart';
import 'package:fushi/src/lookup/gal_lookup_surface_profile.dart';
import 'package:image/image.dart' as img;

/// Geometry measurement of a frozen sample, not text recognition. The Hook
/// supplies every character. Only a regular, horizontal full-width grid is
/// inferred; ambiguous images/text leave the existing draft untouched.
class GalCalibrationImageFit {
  const GalCalibrationImageFit({this.draft, this.reason, this.sampleIndex});
  final GalLookupCalibrationDraft? draft;
  final String? reason;

  /// Zero-based failing sample, without including private text or pixels.
  final int? sampleIndex;
}

Future<GalCalibrationImageFit> fitGalCalibrationImages(
  GalLookupCalibrationDraft draft, {
  GalCalibrationPreviewBuilder build = GalLookupCalibrationPreviewChannel.build,
}) async {
  final GalCalibrationImageFit fit = await compute(
    inferGalCalibrationGrid,
    draft,
  );
  final GalLookupCalibrationDraft? fitted = fit.draft;
  if (fitted == null) return fit;
  for (int index = 0; index < fitted.samples.length; index++) {
    final GalCalibrationSample sample = fitted.samples[index];
    final GalCalibrationPreview preview = await build(
      text: sample.capture.sourceText,
      client: sample.capture.referenceClient,
      rect: fitted.rect,
      layout: fitted.layout,
    );
    if (!preview.accepted) {
      return GalCalibrationImageFit(
        reason: 'preview_rejected',
        sampleIndex: index,
      );
    }
  }
  return fit;
}

class _InkRow {
  const _InkRow(this.top, this.bottom, this.left, this.right, this.columns);
  final int top;
  final int bottom;
  final int left;
  final int right;
  final List<int> columns;
  int get height => bottom - top;
}

class _SampleInk {
  const _SampleInk(this.sample, this.rows, this.width, this.height);
  final GalCalibrationSample sample;
  final List<_InkRow> rows;
  final int width;
  final int height;
}

class _GridFit {
  const _GridFit(this.columns, this.indent, this.pitch, this.left, this.score);
  final int columns;
  final int indent;
  final double pitch;
  final double left;
  final double score;
}

bool _space(int unit) => unit == 0x20 || unit == 0x3000;
bool _newline(int unit) => unit == 10 || unit == 13;
bool _quoted(String text) => text.startsWith('「') || text.startsWith('『');
bool _centered(int unit) =>
    unit >= 0x3041 && unit <= 0x3096 ||
    unit >= 0x30a1 && unit <= 0x30fa ||
    unit >= 0x3400 && unit <= 0x9fff;

/// Keep this eligibility in step with the native cell-grid layout. A narrow or
/// combining glyph cannot silently consume one full-width cell.
bool _eligible(String text) =>
    text.isNotEmpty &&
    text.length <= 512 &&
    text.codeUnits.every(
      (int unit) =>
          _space(unit) ||
          _newline(unit) ||
          unit >= 0x3001 && unit <= 0x303f ||
          unit >= 0x3041 && unit <= 0x3096 ||
          unit >= 0x309d && unit <= 0x309f ||
          unit >= 0x30a1 && unit <= 0x30ff ||
          unit >= 0x3400 && unit <= 0x9fff ||
          unit >= 0xff01 && unit <= 0xff60 ||
          unit == 0x2026 ||
          unit == 0x2014,
    );

List<List<int>> _lines(String text, int capacity, int indent) {
  final List<List<int>> lines = [[]];
  int previous = 0;
  for (final int unit in text.codeUnits) {
    if (_newline(unit)) {
      if (unit != 10 || previous != 13) lines.add([]);
    } else {
      final int limit = capacity - (lines.length == 1 ? 0 : indent);
      if (lines.last.length == limit) lines.add([]);
      lines.last.add(unit);
    }
    previous = unit;
  }
  while (lines.length > 1 && lines.last.isEmpty) {
    lines.removeLast();
  }
  return lines;
}

/// A rough selection can include a few bright pixels from the surrounding
/// artwork. Discard only tiny, isolated islands, never another text-sized run.
/// Punctuation near its neighbours stays part of the same run; a whole short
/// line is also retained. The remaining ink still has to explain every cell.
void _removeIsolatedSpecks(List<int> columns, int rowHeight) {
  final List<(int, int)> groups = [];
  int start = -1;
  int previous = -1;
  for (int x = 0; x < columns.length; x++) {
    if (columns[x] < 2) continue;
    if (start < 0) {
      start = x;
    } else if (x - previous > rowHeight * 1.5) {
      groups.add((start, previous + 1));
      start = x;
    }
    previous = x;
  }
  if (start >= 0) groups.add((start, previous + 1));
  if (groups.length < 2) return;
  final int total = columns.fold<int>(0, (int a, int b) => a + b);
  for (final (int left, int right) in groups) {
    if (right - left > rowHeight * 0.5) continue;
    int ink = 0;
    for (int x = left; x < right; x++) ink += columns[x];
    if (ink <= math.max(4, rowHeight * 0.5) && ink <= total * 0.01) {
      columns.fillRange(left, right, 0);
    }
  }
}

_SampleInk? _measure(
  GalCalibrationSample sample,
  GalLookupNormalizedRectV1 rect,
  bool light,
) {
  final img.Image? decoded = img.decodePng(sample.capture.pngBytes);
  if (decoded == null ||
      decoded.width != sample.capture.referenceClient.widthPx ||
      decoded.height != sample.capture.referenceClient.heightPx)
    return null;
  final double scale = math.min(1, 1600 / decoded.width);
  final img.Image image = scale == 1
      ? decoded
      : img.copyResize(
          decoded,
          width: (decoded.width * scale).round(),
          height: (decoded.height * scale).round(),
        );
  final int left = (rect.left * image.width).floor();
  final int right = (rect.right * image.width).ceil().clamp(0, image.width);
  final int top = (rect.top * image.height).floor();
  final int bottom = (rect.bottom * image.height).ceil().clamp(0, image.height);
  final int width = right - left;
  final int height = bottom - top;
  if (width < 16 || height < 8) return null;
  final Uint8List mask = Uint8List(width * height);
  final List<int> totals = List<int>.filled(height, 0);
  for (int y = top; y < bottom; y++) {
    for (int x = left; x < right; x++) {
      final img.Pixel pixel = image.getPixel(x, y);
      final num low = math.min(pixel.r, math.min(pixel.g, pixel.b));
      final num high = math.max(pixel.r, math.max(pixel.g, pixel.b));
      // Text interiors, excluding coloured frames and most background art.
      final bool ink = high - low < 65 && (light ? low >= 195 : high <= 60);
      if (ink) {
        mask[(y - top) * width + x - left] = 1;
        totals[y - top]++;
      }
    }
  }
  // Blank scanlines separate text rows. A border alone cannot form a row.
  final int peak = totals.fold<int>(0, math.max);
  final double threshold = math.max(3, peak * 0.04);
  final List<(int, int)> bands = [];
  int start = -1;
  int end = -1;
  for (int y = 0; y <= height; y++) {
    if (y < height && totals[y] >= threshold) {
      if (start < 0) start = y;
      end = y + 1;
    } else if (start >= 0 && (y == height || y - end >= 2)) {
      if (end - start >= math.max(6, image.height * 0.012))
        bands.add((start, end));
      start = -1;
    }
  }
  final List<_InkRow> rows = [];
  for (final (int a, int b) in bands) {
    if (b - a > image.height * 0.12) continue;
    final List<int> columns = List<int>.filled(image.width, 0);
    for (int y = a; y < b; y++) {
      for (int x = 0; x < width; x++) columns[left + x] += mask[y * width + x];
    }
    _removeIsolatedSpecks(columns, b - a);
    final int first = columns.indexWhere((int v) => v >= 2);
    final int last = columns.lastIndexWhere((int v) => v >= 2);
    if (first < 0 || last - first < (b - a) * 1.2) continue;
    rows.add(_InkRow(top + a, top + b, first, last + 1, columns));
  }
  if (rows.isEmpty) return null;
  final int tallest = rows.map((_InkRow r) => r.height).reduce(math.max);
  final List<_InkRow> textRows = rows
      .where((_InkRow r) => r.height >= tallest * 0.7)
      .toList();
  if (textRows.isEmpty || textRows.length > 6) return null;
  return _SampleInk(sample, textRows, image.width, image.height);
}

double _score(
  _SampleInk sample,
  int capacity,
  int indent,
  double pitch,
  double origin,
) {
  final List<List<int>> lines = _lines(
    sample.sample.capture.sourceText,
    capacity,
    indent,
  );
  if (lines.length != sample.rows.length) return double.infinity;
  double score = 0;
  int glyphs = 0;
  for (int r = 0; r < lines.length; r++) {
    final _InkRow row = sample.rows[r];
    final List<int> units = lines[r];
    final double start = origin + (r == 0 ? 0 : indent * pitch);
    if (units.isEmpty ||
        start > row.left + 1 ||
        start + units.length * pitch < row.right - 1)
      return double.infinity;
    // A match must explain every visible stroke, not only a convenient subset.
    if (row.left - start > pitch * 0.85 ||
        start + units.length * pitch - row.right > pitch * 0.85) {
      return double.infinity;
    }
    for (int c = 0; c < units.length; c++) {
      final int a = (start + c * pitch).round().clamp(0, sample.width);
      final int b = (start + (c + 1) * pitch).round().clamp(0, sample.width);
      int ink = 0;
      int first = -1;
      int last = -1;
      int boundary = 0;
      final int margin = math.max(1, (pitch * 0.055).round());
      for (int x = a; x < b; x++) {
        final int value = row.columns[x];
        ink += value;
        if (value >= 2) {
          if (first < 0) first = x;
          last = x;
        }
        if (x - a < margin || b - x <= margin) boundary += value;
      }
      if (_space(units[c])) {
        if (ink > row.height * 0.3) return double.infinity;
        continue;
      }
      if (first < 0 || ink < 4) return double.infinity;
      glyphs++;
      score += 4 * boundary / ink;
      if (_centered(units[c])) {
        final double offset = ((first + last + 1) / 2 - (a + b) / 2) / pitch;
        score += offset * offset * 4;
      }
    }
  }
  return glyphs < 4 ? double.infinity : score / glyphs;
}

_GridFit? _fitSample(_SampleInk sample) {
  if (sample.rows.length < 2) return null;
  final int length = sample.sample.capture.sourceText.length;
  final double inkHeight = _median(
    sample.rows.map((_InkRow r) => r.height.toDouble()).toList(),
  );
  final List<_GridFit> candidates = [];
  for (int capacity = 4; capacity <= math.min(128, length); capacity++) {
    for (int indent = 0; indent <= 8 && indent < capacity; indent++) {
      final List<List<int>> lines = _lines(
        sample.sample.capture.sourceText,
        capacity,
        indent,
      );
      if (lines.length != sample.rows.length ||
          lines.any((List<int> l) => l.isEmpty))
        continue;
      final double nominal =
          (sample.rows.first.right - sample.rows.first.left) /
          lines.first.length;
      _GridFit? best;
      for (int step = 0; step <= 40; step++) {
        final double pitch = nominal * (1 + step * 0.003);
        if (pitch < inkHeight * 0.65 || pitch > inkHeight * 1.6) continue;
        for (int phase = 0; phase <= 20; phase++) {
          final double origin = sample.rows.first.left - pitch * phase * 0.025;
          if (origin < 0 || origin + capacity * pitch > sample.width) continue;
          final double score = _score(sample, capacity, indent, pitch, origin);
          if (best == null || score < best.score)
            best = _GridFit(capacity, indent, pitch, origin, score);
        }
      }
      if (best != null && best.score.isFinite) candidates.add(best);
    }
  }
  candidates.sort((_GridFit a, _GridFit b) => a.score.compareTo(b.score));
  if (candidates.isEmpty || candidates.first.score >= 0.09) return null;
  // E.g. explicit newlines reveal row locations but not the soft-wrap column.
  // Do not turn two equally plausible wrap/indent rules into a saved profile.
  if (candidates.length > 1 &&
      candidates[1].score - candidates.first.score < 0.025)
    return null;
  return candidates.first;
}

/// Pure worker entry point. Held-out samples never select the grid, but every
/// saved sample must agree with it before a replacement draft is returned.
GalCalibrationImageFit inferGalCalibrationGrid(
  GalLookupCalibrationDraft draft,
) {
  if (draft.samples.isEmpty || !draft.rect.isValid) {
    return const GalCalibrationImageFit(reason: 'unsupported_text');
  }
  for (int index = 0; index < draft.samples.length; index++) {
    if (!_eligible(draft.samples[index].capture.sourceText)) {
      return GalCalibrationImageFit(
        reason: 'unsupported_text',
        sampleIndex: index,
      );
    }
  }
  String failure = 'image_grid_ambiguous';
  int? failedSample;
  bool onlySingleLines = false;
  for (final bool light in [true, false]) {
    final List<_SampleInk> samples = [];
    for (final GalCalibrationSample sample in draft.samples) {
      final _SampleInk? measured = _measure(sample, draft.rect, light);
      if (measured == null) {
        if (light) {
          failure = 'text_rows_not_found';
          failedSample = samples.length;
        }
        break;
      }
      samples.add(measured);
    }
    if (samples.length != draft.samples.length) continue;
    if (light &&
        samples
            .where((_SampleInk s) => !s.sample.validation)
            .every((_SampleInk s) => s.rows.length == 1))
      onlySingleLines = true;
    final List<(_SampleInk, _GridFit)> training = [];
    for (final _SampleInk sample in samples.where(
      (_SampleInk s) => !s.sample.validation,
    )) {
      final _GridFit? fitted = _fitSample(sample);
      if (fitted != null) training.add((sample, fitted));
    }
    if (training.isEmpty) continue;
    final int columns = training.first.$2.columns;
    if (training.any((item) => item.$2.columns != columns)) continue;
    final List<int> plainIndents = [
      for (final item in training)
        if (!_quoted(item.$1.sample.capture.sourceText)) item.$2.indent,
    ];
    final List<int> quoteIndents = [
      for (final item in training)
        if (_quoted(item.$1.sample.capture.sourceText)) item.$2.indent,
    ];
    if (plainIndents.toSet().length > 1 || quoteIndents.toSet().length > 1)
      continue;
    final int plainIndent = plainIndents.isEmpty ? 0 : plainIndents.first;
    final int quoteIndent = quoteIndents.isEmpty
        ? plainIndent
        : quoteIndents.first;
    final double pitch = _median([
      for (final item in training) item.$2.pitch / item.$1.height,
    ]);
    final double left = _median([
      for (final item in training) item.$2.left / item.$1.width,
    ]);
    final double top = _median([
      for (final item in training)
        (item.$1.rows.first.top - 1) / item.$1.height,
    ]);
    final double cellHeight = _median([
      for (final item in training)
        for (final _InkRow row in item.$1.rows)
          (row.height + 2) / item.$1.height,
    ]);
    final double lineAdvance = _median([
      for (final item in training)
        for (int i = 1; i < item.$1.rows.length; i++)
          (item.$1.rows[i].top - item.$1.rows[i - 1].top) / item.$1.height,
    ]);
    if (lineAdvance < cellHeight) continue;
    bool valid = true;
    for (int index = 0; index < samples.length; index++) {
      final _SampleInk sample = samples[index];
      if (_score(
            sample,
            columns,
            _quoted(sample.sample.capture.sourceText)
                ? quoteIndent
                : plainIndent,
            pitch * sample.height,
            left * sample.width,
          ) >
          0.12) {
        valid = false;
        failure = 'inconsistent_samples';
        failedSample = index;
        break;
      }
      for (int row = 0; row < sample.rows.length; row++) {
        if (((top + row * lineAdvance) * sample.height +
                    1 -
                    sample.rows[row].top)
                .abs() >
            math.max(2, cellHeight * sample.height * 0.12)) {
          valid = false;
          failure = 'inconsistent_samples';
          failedSample = index;
        }
      }
    }
    if (!valid) continue;
    final double aspect = training.first.$1.width / training.first.$1.height;
    final double width = columns * pitch / aspect;
    if (left < 0 || top < 0 || left + width > 1 || top + cellHeight > 1)
      continue;
    final GalLookupCellGridV1 grid = GalLookupCellGridV1(
      advancePerClientHeight: pitch,
      lineAdvancePerClientHeight: lineAdvance,
      cellHeightPerClientHeight: cellHeight,
      columns: columns,
      continuationIndent: plainIndent,
      quotedContinuationIndent: quoteIndent,
    );
    if (!grid.isValid) continue;
    final GalLookupTextLayoutV1 layout = GalLookupTextLayoutV1(cellGrid: grid);
    return GalCalibrationImageFit(
      draft: GalLookupCalibrationDraft(
        rect: GalLookupNormalizedRectV1(
          left: left,
          top: top,
          width: width,
          height: math
              .max(cellHeight, draft.rect.bottom - top)
              .clamp(cellHeight, 1 - top),
        ),
        layout: layout,
        samples: draft.samples,
      ),
    );
  }
  return GalCalibrationImageFit(
    reason: onlySingleLines ? 'multiline_required' : failure,
    sampleIndex: onlySingleLines ? null : failedSample,
  );
}

double _median(List<double> values) {
  values.sort();
  return values.length.isOdd
      ? values[values.length ~/ 2]
      : (values[values.length ~/ 2 - 1] + values[values.length ~/ 2]) / 2;
}
