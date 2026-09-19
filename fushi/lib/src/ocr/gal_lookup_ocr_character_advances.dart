part of 'gal_lookup_calibration_ocr.dart';

double _unitAdvance(_SourceUnit unit, Map<int, double> advances) =>
    advances[unit.value.runes.first] ?? 1;

double _spanAdvance(
  List<_SourceUnit> source,
  int start,
  int end,
  Map<int, double> advances,
) {
  double width = 0;
  for (int i = start; i < end; i++) {
    width += _unitAdvance(source[i], advances);
  }
  return width;
}

double _glyphCellCenter(
  GalCalibrationOcrMatchedLine line,
  GalCalibrationOcrGlyph glyph,
  List<_SourceUnit> source,
  Map<int, double> advances,
) =>
    _spanAdvance(
      source,
      line.sourceStart,
      line.sourceStart + glyph.cellOffset,
      advances,
    ) +
    _unitAdvance(source[line.sourceStart + glyph.cellOffset], advances) / 2;

bool _ordinarySpan(List<_SourceUnit> source, int start, int end) => source
    .sublist(start, end)
    .every(
      (_SourceUnit unit) =>
          _singlePunctuationCodePoint(unit.value) == null && !unit.whitespace,
    );

/// Recover pen movement from the centers of ordinary glyphs on both sides.
/// A dot's visible width or height is deliberately never used as its advance.
List<GalLookupCharacterAdvanceV1> deriveGalCalibrationCharacterAdvances({
  required List<GalCalibrationSample> samples,
  required List<GalCalibrationOcrAlignment> alignments,
  required double pitchPerClientHeight,
}) {
  final Map<int, List<({double ratio, bool ink})>> observations = {};
  for (int i = 0; i < samples.length; i++) {
    if (samples[i].validation || i >= alignments.length) continue;
    final List<_SourceUnit> source = _sourceUnits(
      samples[i].capture.sourceText,
    );
    final double pitch =
        pitchPerClientHeight * samples[i].capture.referenceClient.heightPx;
    if (!pitch.isFinite || pitch <= 0) continue;
    for (final GalCalibrationOcrMatchedLine line in alignments[i].lines) {
      final List<GalCalibrationOcrGlyph> anchors = _reliableGlyphs(line)
          .where(
            (GalCalibrationOcrGlyph g) => _fullSizeInkCharacter(
              source[line.sourceStart + g.cellOffset].value,
            ),
          )
          .toList();
      for (int j = 1; j < anchors.length; j++) {
        final GalCalibrationOcrGlyph a = anchors[j - 1], b = anchors[j];
        final Map<int, int> special = {};
        for (
          int index = line.sourceStart + a.cellOffset + 1;
          index < line.sourceStart + b.cellOffset;
          index++
        ) {
          final int? code = source[index].value == ' '
              ? 0x20
              : _singlePunctuationCodePoint(source[index].value);
          if (code != null) special[code] = (special[code] ?? 0) + 1;
        }
        // Two different unknown advances cannot be solved from one gap.
        if (special.length != 1) continue;
        final int count = special.values.single;
        final double expected = _spanAdvance(
          source,
          line.sourceStart + a.cellOffset,
          line.sourceStart + b.cellOffset,
          const {},
        );
        final double ratio =
            1 + ((b.rect.centerX - a.rect.centerX) / pitch - expected) / count;
        if (!ratio.isFinite || ratio < .15 || ratio > 2) continue;
        observations.putIfAbsent(special.keys.single, () => []).add((
          ratio: ratio,
          ink: a.inkMeasured && b.inkMeasured,
        ));
      }
    }
  }
  final List<GalLookupCharacterAdvanceV1> result = [];
  for (final MapEntry<int, List<({double ratio, bool ink})>> entry
      in observations.entries) {
    final List<({double ratio, bool ink})> ink = entry.value
        .where((o) => o.ink)
        .toList();
    final List<({double ratio, bool ink})> evidence = ink.isNotEmpty
        ? ink
        : entry.value;
    // CTC positions are quantized: one unmeasured gap cannot establish a
    // per-character exception. Independent occurrences can support it.
    if (ink.isEmpty && evidence.length < 2) continue;
    final double ratio = _median(evidence.map((o) => o.ratio).toList());
    if ((ratio - 1).abs() < .15 ||
        evidence.any((o) => (o.ratio - ratio).abs() > .18)) {
      continue;
    }
    result.add(
      GalLookupCharacterAdvanceV1(
        codePoint: entry.key,
        advanceRatio: (ratio * 100).round() / 100,
      ),
    );
  }
  result.sort((a, b) => a.codePoint.compareTo(b.codePoint));
  return List.unmodifiable(result.take(64));
}

/// A leading ASCII space has no ordinary glyph on its left. Measured rows can
/// still establish its width when one shared origin and whole-cell indentation
/// have a unique solution. CTC-only rows cannot establish this exception.
double? _leadingAsciiSpaceAdvance({
  required List<GalCalibrationSample> samples,
  required List<GalCalibrationOcrAlignment> alignments,
  required double pitchPerClientHeight,
  required Map<int, double> widths,
}) {
  final List<({double offset, int spaces, bool quoted})> equations = [];
  for (int i = 0; i < samples.length; i++) {
    if (samples[i].validation) continue;
    final List<_SourceUnit> source = _sourceUnits(
      samples[i].capture.sourceText,
    );
    final double pitch =
        pitchPerClientHeight * samples[i].capture.referenceClient.heightPx;
    final List<GalCalibrationOcrMatchedLine> lines = alignments[i].lines;
    final List<({double origin, int spaces})> origins = [];
    for (final GalCalibrationOcrMatchedLine line in lines) {
      final List<GalCalibrationOcrGlyph> anchors = _reliableGlyphs(line)
          .where(
            (g) =>
                g.inkMeasured &&
                _fullSizeInkCharacter(
                  source[line.sourceStart + g.cellOffset].value,
                ),
          )
          .toList();
      if (anchors.length < 4) break;
      final Set<int> spaces = {
        for (final GalCalibrationOcrGlyph g in anchors)
          source
              .sublist(line.sourceStart, line.sourceStart + g.cellOffset)
              .where((u) => u.value == ' ')
              .length,
      };
      // Internal spaces belong to the direct gap solver instead.
      if (spaces.length != 1) break;
      origins.add((
        origin: _median([
          for (final GalCalibrationOcrGlyph g in anchors)
            g.rect.centerX / pitch - _glyphCellCenter(line, g, source, widths),
        ]),
        spaces: spaces.single,
      ));
    }
    if (origins.length != lines.length || origins.length < 2) continue;
    final bool quoted =
        samples[i].capture.sourceText.startsWith('「') ||
        samples[i].capture.sourceText.startsWith('『');
    for (final row in origins.skip(1)) {
      equations.add((
        offset: row.origin - origins.first.origin,
        spaces: row.spaces - origins.first.spaces,
        quoted: quoted,
      ));
    }
  }
  final List<({double offset, int spaces, bool quoted})> informative = equations
      .where((e) => e.spaces != 0 && (e.offset - e.offset.round()).abs() > .15)
      .toList();
  if (informative.isEmpty) return null;
  final first = informative.first;
  final List<double> candidates = [];
  for (int indent = 0; indent <= 8; indent++) {
    final double ratio = 1 + (first.offset - indent) / first.spaces;
    // This inference establishes only a narrow ASCII space. Wider spaces
    // require direct measurements between ordinary glyphs.
    if (!ratio.isFinite || ratio < .15 || ratio > .85) continue;
    final Map<bool, int> indents = {};
    bool valid = true;
    for (final equation in equations) {
      final double actual = equation.offset - equation.spaces * (ratio - 1);
      final int rounded = actual.round();
      if (rounded < 0 ||
          rounded > 8 ||
          (actual - rounded).abs() > .05 ||
          (indents.containsKey(equation.quoted) &&
              indents[equation.quoted] != rounded)) {
        valid = false;
        break;
      }
      indents[equation.quoted] = rounded;
    }
    if (valid) candidates.add(ratio);
  }
  if (candidates.length != 1) return null;
  return (candidates.single * 100).round() / 100;
}

typedef _OcrRowEnd = ({
  double width,
  double lastWidth,
  double nextWidth,
  bool softWrap,
  bool punctuation,
  int sample,
});

/// A wrapped row proves a capacity interval, not a character count. Choose a
/// common capacity in those intervals, allowing the existing punctuation hang.
({double width, bool hanging})? _fitOcrRowCapacity(List<_OcrRowEnd> rows) {
  final List<_OcrRowEnd> wrapped = rows.where((r) => r.softWrap).toList();
  if (wrapped.isEmpty) return null;
  final Set<double> candidates = {};
  for (final _OcrRowEnd row in wrapped) {
    candidates.add(row.width);
    candidates.add((row.width - .02).ceilToDouble());
    if (row.punctuation) candidates.add(row.width - row.lastWidth);
  }
  final List<double> ordered = candidates.toList()..sort();
  for (final double width in ordered) {
    if (width < 2 || width > 128) continue;
    bool valid = true;
    bool hanging = false;
    for (final _OcrRowEnd row in rows) {
      final bool hangs =
          row.width > width + .02 &&
          row.punctuation &&
          row.lastWidth <= 1 &&
          (row.width - row.lastWidth - width).abs() <= .02;
      if (row.width > width + .02 && !hangs ||
          row.softWrap && row.width + row.nextWidth <= width + .02) {
        valid = false;
        break;
      }
      hanging = hanging || hangs;
    }
    if (valid) return (width: width, hanging: hanging);
  }
  return null;
}
