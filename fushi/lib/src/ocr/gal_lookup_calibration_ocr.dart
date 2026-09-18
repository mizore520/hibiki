/// Offline OCR assistance for Galgame calibration.
///
/// This file is intentionally outside `src/lookup`.  OCR is used only while a
/// user is calibrating a frozen screenshot: it proposes line/character
/// locations, while the Hook text remains the authoritative string and the
/// native grid remains the authoritative hit-test geometry.  The runtime
/// lookup path never calls this module.
library;

import 'dart:io';
import 'dart:math' as math;
import 'dart:typed_data';

import 'package:fushi/src/lookup/gal_lookup_calibration_draft.dart';
import 'package:fushi/src/lookup/gal_lookup_calibration_capture.dart';
import 'package:fushi/src/lookup/gal_lookup_calibration_image_fit.dart';
import 'package:fushi/src/lookup/gal_lookup_calibration_preview.dart';
import 'package:fushi/src/lookup/gal_lookup_surface_profile.dart';
import 'package:fushi/src/storage/app_paths.dart';
import 'package:fushi_engine/ocr/manga_ocr_model_downloader.dart';
import 'package:fushi_engine/ocr/manga_ocr_model_manifest.dart';
import 'package:fushi_engine/ocr/manga_ocr_service.dart';
import 'package:fushi_engine/ocr/ocr_host_bindings.dart';
import 'package:fushi_engine/ocr/ocr_inference.dart';
import 'package:fushi_engine/ocr/ocr_types.dart';
import 'package:fushi_engine/ocr/ppocr_line_detector.dart';
import 'package:fushi_engine/ocr/ppocr_line_recognizer.dart';
import 'package:image/image.dart' as img;
import 'package:path/path.dart' as p;

/// The only model files calibration needs.  The full manga OCR pack is about
/// 500 MB; these PP-OCRv6 small files are about 31 MB and provide exactly the
/// coarse line/character hints this job needs.
const List<MangaOcrModelFile> kGalCalibrationOcrModelManifest =
    <MangaOcrModelFile>[
      MangaOcrModelFile(
        fileName: kPpOcrDetFileName,
        url:
            'https://huggingface.co/PaddlePaddle/PP-OCRv6_small_det_onnx/'
            'resolve/$kPpOcrDetRevision/inference.onnx',
        expectedBytes: 9880512,
        role: MangaOcrModelRole.detector,
      ),
      MangaOcrModelFile(
        fileName: kPpOcrRecFileName,
        url:
            'https://huggingface.co/PaddlePaddle/PP-OCRv6_small_rec_onnx/'
            'resolve/$kPpOcrRecRevision/inference.onnx',
        expectedBytes: 21159378,
        role: MangaOcrModelRole.recognizer,
      ),
      MangaOcrModelFile(
        fileName: kPpOcrRecDictFileName,
        url:
            'https://huggingface.co/PaddlePaddle/PP-OCRv6_small_rec_onnx/'
            'resolve/$kPpOcrRecRevision/inference.yml',
        expectedBytes: 150579,
        role: MangaOcrModelRole.recognizer,
      ),
    ];

class GalCalibrationOcrModelStatus {
  const GalCalibrationOcrModelStatus({
    required this.ready,
    required this.obtainedBytes,
    required this.diskBytes,
    required this.totalBytes,
  });

  final bool ready;
  final int obtainedBytes;
  final int diskBytes;
  final int totalBytes;
}

/// Model storage is separate from the much larger manga OCR model directory.
class GalCalibrationOcrModelStore {
  GalCalibrationOcrModelStore({
    Future<Directory> Function()? directoryProvider,
    MangaOcrModelDownloader? downloader,
    List<MangaOcrModelFile>? manifest,
  }) : _directoryProvider = directoryProvider ?? _defaultDirectory,
       _downloader = downloader ?? MangaOcrModelDownloader(),
       manifest = List.unmodifiable(
         manifest ?? kGalCalibrationOcrModelManifest,
       );

  final Future<Directory> Function() _directoryProvider;
  final MangaOcrModelDownloader _downloader;
  final List<MangaOcrModelFile> manifest;

  static Future<Directory> _defaultDirectory() async {
    final Directory support = await AppPaths.supportRootDirectory();
    final Directory manga = Directory(
      p.join(support.path, 'ocr_models', 'manga'),
    );
    // The shared manga OCR service already downloads these PP-OCRv6 files.
    // Reuse them when present so enabling calibration does not create a second
    // 31 MB copy; otherwise keep the small calibration pack isolated from the
    // larger manga model lifecycle.
    final bool sharedReady = kGalCalibrationOcrModelManifest.every(
      (MangaOcrModelFile model) =>
          isMangaOcrModelFileReady(File(p.join(manga.path, model.fileName))),
    );
    if (sharedReady) return manga;
    return Directory(p.join(support.path, 'ocr_models', 'gal_calibration'));
  }

  Future<Directory> directory() => _directoryProvider();

  Future<GalCalibrationOcrModelStatus> status() async {
    final Directory dir = await directory();
    int obtained = 0;
    int disk = 0;
    bool ready = true;
    int total = 0;
    for (final MangaOcrModelFile model in manifest) {
      total += model.expectedBytes;
      final File file = File(p.join(dir.path, model.fileName));
      if (isMangaOcrModelFileReady(file)) {
        obtained += file.lengthSync();
        disk += file.lengthSync();
        continue;
      }
      ready = false;
      final File part = File('${file.path}.part');
      if (part.existsSync()) {
        obtained += part.lengthSync();
        disk += part.lengthSync();
      }
    }
    return GalCalibrationOcrModelStatus(
      ready: ready,
      obtainedBytes: obtained,
      diskBytes: disk,
      totalBytes: total,
    );
  }

  Stream<MangaOcrDownloadEvent> download() async* {
    final Directory dir = await directory();
    await dir.create(recursive: true);
    yield* _downloader.downloadAll(files: manifest, targetDir: dir);
  }
}

/// An OCR detector's line box plus the text it guessed.  Coordinates are in
/// the full captured client image, not in the cropped dialogue region.
class GalCalibrationOcrLine {
  const GalCalibrationOcrLine({
    required this.text,
    required this.rect,
    required this.score,
  });

  final String text;
  final OcrRect rect;
  final double score;
}

class GalCalibrationOcrGlyph {
  const GalCalibrationOcrGlyph({
    required this.sourceIndex,
    required this.charLength,
    required this.cellOffset,
    required this.lineIndex,
    required this.rect,
    required this.confidence,
  });

  final int sourceIndex;
  final int charLength;
  final int cellOffset;
  final int lineIndex;
  final OcrRect rect;
  final double confidence;
}

class GalCalibrationOcrMatchedLine {
  const GalCalibrationOcrMatchedLine({
    required this.sourceStart,
    required this.sourceEnd,
    required this.cellCount,
    required this.lineIndex,
    required this.rect,
    required this.glyphs,
  });

  /// Indices are positions in the source's logical cell list, not UTF-16
  /// offsets.  The glyphs themselves retain the UTF-16 index used by Hook.
  final int sourceStart;
  final int sourceEnd;
  final int cellCount;
  final int lineIndex;
  final OcrRect rect;
  final List<GalCalibrationOcrGlyph> glyphs;
}

class GalCalibrationOcrAlignment {
  const GalCalibrationOcrAlignment({
    required this.lines,
    required this.confidence,
    this.reason,
  });

  final List<GalCalibrationOcrMatchedLine> lines;
  final double confidence;
  final String? reason;

  bool get accepted => reason == null && lines.isNotEmpty;
}

class _SourceUnit {
  const _SourceUnit({
    required this.value,
    required this.index,
    required this.length,
    required this.whitespace,
  });

  final String value;
  final int index;
  final int length;
  final bool whitespace;
}

class _OcrUnit {
  const _OcrUnit({required this.value, required this.rect});

  final String value;
  final OcrRect rect;
}

class _LineSpan {
  const _LineSpan(this.start, this.end);
  final int start;
  final int end;
}

class _TokenPair {
  const _TokenPair(this.source, this.ocr, this.cost);
  final int source;
  final int ocr;
  final double cost;
}

typedef _OcrLineSelection = ({
  List<GalCalibrationOcrLine> lines,
  List<_LineSpan> spans,
  double score,
});

String _foldOcrChar(String value) {
  if (value.isEmpty) return value;
  final int rune = value.runes.first;
  if (rune >= 0xff01 && rune <= 0xff5e) {
    return String.fromCharCode(rune - 0xfee0);
  }
  if (rune == 0x3000) return ' ';
  return value.toLowerCase();
}

bool _ocrWhitespace(String value) => value.trim().isEmpty;

List<_SourceUnit> _sourceUnits(String text) {
  final List<_SourceUnit> units = <_SourceUnit>[];
  int index = 0;
  for (final int rune in text.runes) {
    final String value = String.fromCharCode(rune);
    final int length = value.length;
    if (rune == 0x0a || rune == 0x0d) {
      index += length;
      continue;
    }
    final bool combining =
        (rune >= 0x0300 && rune <= 0x036f) ||
        (rune >= 0x1ab0 && rune <= 0x1aff) ||
        (rune >= 0x1dc0 && rune <= 0x1dff) ||
        (rune >= 0x20d0 && rune <= 0x20ff) ||
        (rune >= 0xfe00 && rune <= 0xfe0f) ||
        (rune >= 0x1f3fb && rune <= 0x1f3ff) ||
        (rune >= 0xe0100 && rune <= 0xe01ef);
    if (combining && units.isNotEmpty && !units.last.whitespace) {
      index += length;
      continue;
    }
    units.add(
      _SourceUnit(
        value: value,
        index: index,
        length: length,
        whitespace: value == ' ' || value == '\t' || value == '\u3000',
      ),
    );
    index += length;
  }
  return units;
}

List<_OcrUnit> _ocrUnits(GalCalibrationOcrLine line) {
  final List<String> values = <String>[];
  for (final int rune in line.text.runes) {
    final String value = String.fromCharCode(rune);
    final int last = values.length - 1;
    final bool combining =
        (rune >= 0x0300 && rune <= 0x036f) ||
        (rune >= 0x1ab0 && rune <= 0x1aff) ||
        (rune >= 0x1dc0 && rune <= 0x1dff) ||
        (rune >= 0x20d0 && rune <= 0x20ff) ||
        (rune >= 0xfe00 && rune <= 0xfe0f) ||
        (rune >= 0x1f3fb && rune <= 0x1f3ff) ||
        (rune >= 0xe0100 && rune <= 0xe01ef);
    if (combining && last >= 0 && !_ocrWhitespace(values[last])) {
      values[last] += value;
    } else {
      values.add(value);
    }
  }
  if (values.isEmpty || line.rect.width <= 0 || line.rect.height <= 0) {
    return const <_OcrUnit>[];
  }
  final double width = line.rect.width / values.length;
  return <_OcrUnit>[
    for (int i = 0; i < values.length; i++)
      _OcrUnit(
        value: values[i],
        rect: OcrRect(
          left: line.rect.left + width * i,
          top: line.rect.top,
          right: line.rect.left + width * (i + 1),
          bottom: line.rect.bottom,
        ),
      ),
  ];
}

double _editDistance(String a, String b) {
  final List<String> aa = a.runes
      .map(String.fromCharCode)
      .where((String c) => !_ocrWhitespace(c))
      .map(_foldOcrChar)
      .toList();
  final List<String> bb = b.runes
      .map(String.fromCharCode)
      .where((String c) => !_ocrWhitespace(c))
      .map(_foldOcrChar)
      .toList();
  final List<double> previous = List<double>.generate(
    bb.length + 1,
    (int i) => i.toDouble(),
  );
  for (int i = 1; i <= aa.length; i++) {
    final List<double> current = List<double>.filled(bb.length + 1, 0);
    current[0] = i.toDouble();
    for (int j = 1; j <= bb.length; j++) {
      final double substitute =
          previous[j - 1] + (aa[i - 1] == bb[j - 1] ? 0 : 0.65);
      current[j] = math.min(
        math.min(substitute, previous[j] + 0.85),
        current[j - 1] + 0.85,
      );
    }
    previous.setAll(0, current);
  }
  return previous.last / math.max(1, math.max(aa.length, bb.length));
}

String _visibleText(Iterable<_SourceUnit> units) => units
    .where((_SourceUnit unit) => !unit.whitespace)
    .map((_SourceUnit unit) => unit.value)
    .join();

List<_LineSpan>? _partitionSource(
  List<_SourceUnit> source,
  List<GalCalibrationOcrLine> lines,
) {
  if (source.isEmpty || lines.isEmpty) return null;
  final int n = source.length;
  final int m = lines.length;
  final List<List<double>> dp = List<List<double>>.generate(
    m + 1,
    (_) => List<double>.filled(n + 1, double.infinity),
  );
  final List<List<int>> previous = List<List<int>>.generate(
    m + 1,
    (_) => List<int>.filled(n + 1, -1),
  );
  dp[0][0] = 0;
  for (int i = 0; i < m; i++) {
    for (int start = 0; start < n; start++) {
      if (!dp[i][start].isFinite) continue;
      for (int end = start + 1; end <= n; end++) {
        final String sourceText = _visibleText(source.sublist(start, end));
        final String ocrText = lines[i].text;
        final double lengthPenalty =
            (sourceText.runes.length -
                    ocrText.runes
                        .where(
                          (int r) =>
                              String.fromCharCode(r).trim().isNotEmpty,
                        )
                        .length)
                .abs() *
            0.025;
        final double cost =
            dp[i][start] +
            _editDistance(sourceText, ocrText) +
            lengthPenalty +
            (i == m - 1 && end != n ? 0.4 : 0);
        if (cost < dp[i + 1][end]) {
          dp[i + 1][end] = cost;
          previous[i + 1][end] = start;
        }
      }
    }
  }
  if (!dp[m][n].isFinite || dp[m][n] > math.max(0.7, m * 0.48)) return null;
  final List<_LineSpan> result = <_LineSpan>[];
  int end = n;
  for (int i = m; i > 0; i--) {
    final int start = previous[i][end];
    if (start < 0) return null;
    result.add(_LineSpan(start, end));
    end = start;
  }
  return result.reversed.toList();
}

/// A deliberately rough capture rectangle can include a speaker name or a
/// button row.  Prefer the contiguous run of detected lines that explains the
/// Hook sentence instead of requiring the user to crop those extras by hand.
/// The dropped-line penalty prevents a short accidental match from winning a
/// tie against the complete dialogue block.
_OcrLineSelection? _selectOcrLineRun(
  List<_SourceUnit> source,
  List<GalCalibrationOcrLine> lines,
) {
  if (source.isEmpty || lines.isEmpty) return null;
  _OcrLineSelection? best;
  for (int start = 0; start < lines.length; start++) {
    for (int end = start + 1; end <= lines.length; end++) {
      final List<GalCalibrationOcrLine> candidate = lines.sublist(start, end);
      final List<_LineSpan>? spans = _partitionSource(source, candidate);
      if (spans == null) continue;
      double score = (lines.length - candidate.length) * 0.08;
      for (int i = 0; i < candidate.length; i++) {
        final _LineSpan span = spans[i];
        score += _editDistance(
          _visibleText(source.sublist(span.start, span.end)),
          candidate[i].text,
        );
      }
      final _OcrLineSelection selection = (
        lines: List.unmodifiable(candidate),
        spans: spans,
        score: score,
      );
      if (best == null ||
          score < best.score - 1e-9 ||
          ((score - best.score).abs() < 1e-9 &&
              candidate.length > best.lines.length)) {
        best = selection;
      }
    }
  }
  return best;
}

List<_TokenPair> _alignLineTokens(
  List<_SourceUnit> source,
  _LineSpan span,
  List<_OcrUnit> ocr,
) {
  final List<int> sourceTokens = <int>[];
  for (int i = span.start; i < span.end; i++) {
    if (!source[i].whitespace) {
      sourceTokens.add(i);
    }
  }
  final List<int> ocrTokens = <int>[];
  for (int i = 0; i < ocr.length; i++) {
    if (!_ocrWhitespace(ocr[i].value)) {
      ocrTokens.add(i);
    }
  }
  final List<List<double>> dp = List<List<double>>.generate(
    sourceTokens.length + 1,
    (_) => List<double>.filled(ocrTokens.length + 1, 0),
  );
  for (int i = 0; i <= sourceTokens.length; i++) dp[i][0] = i * 0.85;
  for (int j = 0; j <= ocrTokens.length; j++) dp[0][j] = j * 0.85;
  for (int i = 1; i <= sourceTokens.length; i++) {
    for (int j = 1; j <= ocrTokens.length; j++) {
      final String a = _foldOcrChar(source[sourceTokens[i - 1]].value);
      final String b = _foldOcrChar(ocr[ocrTokens[j - 1]].value);
      dp[i][j] = math.min(
        math.min(dp[i - 1][j] + 0.85, dp[i][j - 1] + 0.85),
        dp[i - 1][j - 1] + (a == b ? 0 : 0.65),
      );
    }
  }
  final List<_TokenPair> pairs = <_TokenPair>[];
  int i = sourceTokens.length;
  int j = ocrTokens.length;
  while (i > 0 || j > 0) {
    if (i > 0 && j > 0) {
      final double sub =
          dp[i - 1][j - 1] +
          (_foldOcrChar(source[sourceTokens[i - 1]].value) ==
                  _foldOcrChar(ocr[ocrTokens[j - 1]].value)
              ? 0
              : 0.65);
      if ((dp[i][j] - sub).abs() < 1e-9) {
        pairs.add(_TokenPair(sourceTokens[i - 1], ocrTokens[j - 1], sub));
        i--;
        j--;
        continue;
      }
    }
    if (i > 0 && (j == 0 || (dp[i][j] - (dp[i - 1][j] + 0.85)).abs() < 1e-9)) {
      i--;
    } else {
      j--;
    }
  }
  return pairs.reversed.toList();
}

/// Align OCR's imperfect text back to the exact Hook string and retain only
/// geometry-backed character hints.  Equal subdivision is deliberate: OCR is
/// the coarse locator, never the final glyph measurement.
GalCalibrationOcrAlignment alignGalCalibrationOcrLines({
  required String sourceText,
  required List<GalCalibrationOcrLine> lines,
}) {
  final List<_SourceUnit> source = _sourceUnits(sourceText);
  final List<GalCalibrationOcrLine> usable = lines
      .where((GalCalibrationOcrLine line) => line.text.trim().isNotEmpty)
      .toList();
  final _OcrLineSelection? selection = _selectOcrLineRun(source, usable);
  if (selection == null) {
    return const GalCalibrationOcrAlignment(
      lines: <GalCalibrationOcrMatchedLine>[],
      confidence: 0,
      reason: 'ocr_text_alignment_failed',
    );
  }
  final List<GalCalibrationOcrLine> selected = selection.lines;
  final List<_LineSpan> spans = selection.spans;
  final List<GalCalibrationOcrMatchedLine> matched = [];
  double confidence = 0;
  for (int lineIndex = 0; lineIndex < selected.length; lineIndex++) {
    final GalCalibrationOcrLine line = selected[lineIndex];
    final _LineSpan span = spans[lineIndex];
    final List<_OcrUnit> ocr = _ocrUnits(line);
    final List<_TokenPair> pairs = _alignLineTokens(source, span, ocr);
    final int sourceVisible = source
        .sublist(span.start, span.end)
        .where((_SourceUnit unit) => !unit.whitespace)
        .length;
    if (pairs.length < math.max(1, (sourceVisible * 0.45).round())) {
      return GalCalibrationOcrAlignment(
        lines: const <GalCalibrationOcrMatchedLine>[],
        confidence: 0,
        reason: 'ocr_text_alignment_weak',
      );
    }
    final List<GalCalibrationOcrGlyph> glyphs = <GalCalibrationOcrGlyph>[];
    for (final _TokenPair pair in pairs) {
      final _SourceUnit sourceUnit = source[pair.source];
      final _OcrUnit ocrUnit = ocr[pair.ocr];
      final bool exact =
          _foldOcrChar(sourceUnit.value) == _foldOcrChar(ocrUnit.value);
      final int cellOffset = pair.source - span.start;
      glyphs.add(
        GalCalibrationOcrGlyph(
          sourceIndex: sourceUnit.index,
          charLength: sourceUnit.length,
          cellOffset: cellOffset,
          lineIndex: lineIndex,
          rect: ocrUnit.rect,
          confidence: line.score.clamp(0, 1) * (exact ? 1 : 0.35),
        ),
      );
      confidence += exact ? 1 : 0.35;
    }
    matched.add(
      GalCalibrationOcrMatchedLine(
        sourceStart: span.start,
        sourceEnd: span.end,
        cellCount: span.end - span.start,
        lineIndex: lineIndex,
        rect: line.rect,
        glyphs: List.unmodifiable(glyphs),
      ),
    );
  }
  final int totalGlyphs = matched.fold<int>(
    0,
    (int total, GalCalibrationOcrMatchedLine line) =>
        total + line.glyphs.length,
  );
  final double normalized = totalGlyphs == 0 ? 0 : confidence / totalGlyphs;
  if (normalized < 0.35) {
    return GalCalibrationOcrAlignment(
      lines: const <GalCalibrationOcrMatchedLine>[],
      confidence: normalized,
      reason: 'ocr_confidence_low',
    );
  }
  return GalCalibrationOcrAlignment(
    lines: List.unmodifiable(matched),
    confidence: normalized,
  );
}

double _median(List<double> values) {
  if (values.isEmpty) return double.nan;
  values.sort();
  final int middle = values.length ~/ 2;
  return values.length.isOdd
      ? values[middle]
      : (values[middle - 1] + values[middle]) / 2;
}

/// Convert aligned OCR hints into the same native cell-grid contract used by
/// the existing pixel fitter.  Training samples determine the grid; validation
/// samples only accept/reject it.
Future<GalCalibrationImageFit> fitGalCalibrationOcrGrid(
  GalLookupCalibrationDraft draft,
  List<GalCalibrationOcrAlignment> alignments, {
  required GalCalibrationPreviewBuilder build,
}) async {
  if (alignments.length != draft.samples.length || alignments.isEmpty) {
    return const GalCalibrationImageFit(reason: 'ocr_alignment_missing');
  }
  for (int i = 0; i < alignments.length; i++) {
    if (!alignments[i].accepted) {
      return GalCalibrationImageFit(
        reason: alignments[i].reason ?? 'ocr_alignment_failed',
        sampleIndex: i,
      );
    }
  }
  final List<int> trainingIndices = [
    for (int i = 0; i < draft.samples.length; i++)
      if (!draft.samples[i].validation) i,
  ];
  final List<int> multilineTraining = [
    for (final int i in trainingIndices)
      if (alignments[i].lines.length >= 2) i,
  ];
  if (multilineTraining.isEmpty) {
    return const GalCalibrationImageFit(reason: 'multiline_required');
  }

  final List<
    ({
      int index,
      double pitch,
      double cellHeight,
      double? lineAdvance,
      double origin,
      double top,
      int columns,
    })
  >
  measurements = [];
  final List<double> normalizedPitches = <double>[];
  final List<double> normalizedAdvances = <double>[];
  final List<double> normalizedCellHeights = <double>[];
  for (final int i in trainingIndices) {
    final GalCalibrationOcrAlignment alignment = alignments[i];
    final GalLookupReferenceClientV1 client =
        draft.samples[i].capture.referenceClient;
    final List<double> pitches = <double>[];
    final List<double> lineAdvances = <double>[];
    final List<double> cellHeights = <double>[];
    for (final GalCalibrationOcrMatchedLine line in alignment.lines) {
      cellHeights.add(line.rect.height);
      final List<GalCalibrationOcrGlyph> glyphs = line.glyphs.toList()
        ..sort(
          (GalCalibrationOcrGlyph a, GalCalibrationOcrGlyph b) =>
              a.cellOffset.compareTo(b.cellOffset),
        );
      for (int g = 1; g < glyphs.length; g++) {
        final GalCalibrationOcrGlyph a = glyphs[g - 1];
        final GalCalibrationOcrGlyph b = glyphs[g];
        final int cells = b.cellOffset - a.cellOffset;
        if (cells > 0 && b.rect.centerX > a.rect.centerX) {
          pitches.add((b.rect.centerX - a.rect.centerX) / cells);
        }
      }
    }
    if (pitches.isEmpty) {
      // A very short OCR line can contain only one matched glyph per detected
      // box, leaving no pairwise pitch.  Its whole line box still gives a
      // useful coarse estimate; another multiline sample supplies the final
      // shared median.
      for (final GalCalibrationOcrMatchedLine line in alignment.lines) {
        if (line.cellCount > 1 && line.rect.width > 0) {
          pitches.add(line.rect.width / line.cellCount);
        }
      }
    }
    for (int line = 1; line < alignment.lines.length; line++) {
      final double delta =
          alignment.lines[line].rect.top - alignment.lines[line - 1].rect.top;
      if (delta > 0) lineAdvances.add(delta);
    }
    final double samplePitch = _median(
      pitches.where((double v) => v > 0).toList(),
    );
    final double sampleCellHeight = _median(
      cellHeights.where((double v) => v > 0).toList(),
    );
    final double? sampleLineAdvance = lineAdvances.isEmpty
        ? null
        : _median(lineAdvances.where((double v) => v > 0).toList());
    if (!samplePitch.isFinite ||
        !sampleCellHeight.isFinite ||
        samplePitch <= 0 ||
        sampleCellHeight <= 0) {
      return GalCalibrationImageFit(
        reason: 'ocr_geometry_weak',
        sampleIndex: i,
      );
    }
    final List<double> originCandidates = <double>[];
    // The first visual line has no continuation indent.  Later lines may be
    // intentionally shifted by a space, so using them to estimate the origin
    // would bake that indent into the shared left edge.
    for (final GalCalibrationOcrGlyph glyph in alignment.lines.first.glyphs) {
      originCandidates.add(
        (glyph.rect.centerX - (glyph.cellOffset + 0.5) * samplePitch) /
            client.widthPx,
      );
    }
    final double sampleOrigin = _median(originCandidates);
    final double sampleTop = alignment.lines.first.rect.top / client.heightPx;
    if (!sampleOrigin.isFinite || !sampleTop.isFinite) {
      return GalCalibrationImageFit(
        reason: 'ocr_geometry_weak',
        sampleIndex: i,
      );
    }
    int sampleColumns = 0;
    for (int lineIndex = 0; lineIndex < alignment.lines.length; lineIndex++) {
      final GalCalibrationOcrMatchedLine line = alignment.lines[lineIndex];
      final List<GalCalibrationOcrGlyph> glyphs = line.glyphs.toList()
        ..sort(
          (GalCalibrationOcrGlyph a, GalCalibrationOcrGlyph b) =>
              a.cellOffset.compareTo(b.cellOffset),
        );
      if (glyphs.isEmpty) continue;
      final GalCalibrationOcrGlyph first = glyphs.first;
      final int inferred =
          ((first.rect.centerX - sampleOrigin * client.widthPx) / samplePitch -
                  first.cellOffset -
                  0.5)
              .round();
      final int indent = lineIndex == 0 ? 0 : inferred;
      if (indent < 0 || indent > 8) {
        return GalCalibrationImageFit(
          reason: 'ocr_indent_ambiguous',
          sampleIndex: i,
        );
      }
      sampleColumns = math.max(sampleColumns, indent + line.cellCount);
    }
    if (sampleColumns < 2 || sampleColumns > 128) {
      return GalCalibrationImageFit(
        reason: 'ocr_geometry_weak',
        sampleIndex: i,
      );
    }
    measurements.add((
      index: i,
      pitch: samplePitch,
      cellHeight: sampleCellHeight,
      lineAdvance: sampleLineAdvance,
      origin: sampleOrigin,
      top: sampleTop,
      columns: sampleColumns,
    ));
    normalizedPitches.add(samplePitch / client.heightPx);
    normalizedCellHeights.add(sampleCellHeight / client.heightPx);
    if (sampleLineAdvance != null) {
      normalizedAdvances.add(sampleLineAdvance / client.heightPx);
    }
  }
  final double pitchPerHeight = _median(normalizedPitches);
  final double cellHeightPerHeight = _median(normalizedCellHeights);
  final double lineAdvancePerHeight = _median(normalizedAdvances);
  if (!pitchPerHeight.isFinite ||
      !cellHeightPerHeight.isFinite ||
      !lineAdvancePerHeight.isFinite ||
      pitchPerHeight <= 0 ||
      cellHeightPerHeight <= 0 ||
      lineAdvancePerHeight < cellHeightPerHeight * 0.65) {
    return const GalCalibrationImageFit(reason: 'ocr_geometry_weak');
  }

  final List<double> origins = <double>[];
  final List<double> tops = <double>[];
  for (final measurement in measurements) {
    final GalCalibrationOcrAlignment alignment = alignments[measurement.index];
    if (alignment.lines.isEmpty) continue;
    origins.add(measurement.origin);
    tops.add(measurement.top);
  }
  final double origin = _median(origins);
  final double top = _median(tops);
  if (!origin.isFinite || !top.isFinite) {
    return const GalCalibrationImageFit(reason: 'ocr_geometry_weak');
  }

  final List<int> plainIndents = <int>[];
  final List<int> quoteIndents = <int>[];
  int columns = 0;
  double maxBodyHeight = 0;
  final List<double> normalizedBodyWidths = <double>[];
  for (final measurement in measurements) {
    final int i = measurement.index;
    final GalCalibrationOcrAlignment alignment = alignments[i];
    final GalLookupCalibrationCapture capture = draft.samples[i].capture;
    final int imageWidth = capture.referenceClient.widthPx;
    final int imageHeight = capture.referenceClient.heightPx;
    final double pitch = pitchPerHeight * imageHeight;
    final double cellHeight = cellHeightPerHeight * imageHeight;
    final double lineAdvance = lineAdvancePerHeight * imageHeight;
    final bool quoted =
        capture.sourceText.startsWith('「') ||
        capture.sourceText.startsWith('『');
    int maxLineEnd = 0;
    int sampleColumns = 0;
    for (int lineIndex = 0; lineIndex < alignment.lines.length; lineIndex++) {
      final GalCalibrationOcrMatchedLine line = alignment.lines[lineIndex];
      final List<GalCalibrationOcrGlyph> glyphs = line.glyphs.toList()
        ..sort(
          (GalCalibrationOcrGlyph a, GalCalibrationOcrGlyph b) =>
              a.cellOffset.compareTo(b.cellOffset),
        );
      if (glyphs.isEmpty) continue;
      final GalCalibrationOcrGlyph first = glyphs.first;
      final int inferred =
          ((first.rect.centerX - measurement.origin * imageWidth) / pitch -
                  first.cellOffset -
                  0.5)
              .round();
      final int indent = lineIndex == 0 ? 0 : inferred;
      if (indent < 0 || indent > 8) {
        return GalCalibrationImageFit(
          reason: 'ocr_indent_ambiguous',
          sampleIndex: i,
        );
      }
      if (lineIndex > 0) {
        (quoted ? quoteIndents : plainIndents).add(indent);
      }
      columns = math.max(columns, indent + line.cellCount);
      sampleColumns = math.max(sampleColumns, indent + line.cellCount);
      maxLineEnd = math.max(maxLineEnd, lineIndex);
      for (final GalCalibrationOcrGlyph glyph in glyphs) {
        final double expectedX =
            origin * imageWidth + (indent + glyph.cellOffset + 0.5) * pitch;
        final double expectedY =
            top * imageHeight + lineIndex * lineAdvance + cellHeight / 2;
        if ((glyph.rect.centerX - expectedX).abs() > pitch * 0.65 ||
            (glyph.rect.centerY - expectedY).abs() > cellHeight * 0.9) {
          return GalCalibrationImageFit(
            reason: 'ocr_geometry_inconsistent',
            sampleIndex: i,
          );
        }
      }
    }
    normalizedBodyWidths.add(sampleColumns * pitch / imageWidth);
    maxBodyHeight = math.max(
      maxBodyHeight,
      (maxLineEnd * lineAdvance + cellHeight) / imageHeight,
    );
  }
  int mode(List<int> values) {
    if (values.isEmpty) return 0;
    final Map<int, int> counts = <int, int>{};
    for (final int value in values) {
      counts[value] = (counts[value] ?? 0) + 1;
    }
    return counts.entries
        .reduce(
          (MapEntry<int, int> a, MapEntry<int, int> b) =>
              a.value >= b.value ? a : b,
        )
        .key;
  }

  final int plainIndent = mode(plainIndents);
  final int quoteIndent = quoteIndents.isEmpty
      ? plainIndent
      : mode(quoteIndents);
  if (plainIndents.any((int v) => v != plainIndent) ||
      quoteIndents.any((int v) => v != quoteIndent) ||
      columns < 2 ||
      columns > 128) {
    return const GalCalibrationImageFit(reason: 'ocr_indent_ambiguous');
  }

  final GalLookupCellGridV1 grid = GalLookupCellGridV1(
    advancePerClientHeight: pitchPerHeight,
    lineAdvancePerClientHeight: lineAdvancePerHeight,
    cellHeightPerClientHeight: cellHeightPerHeight,
    columns: columns,
    continuationIndent: plainIndent,
    quotedContinuationIndent: quoteIndent,
  );
  final double left = origin;
  final double bodyTop = top;
  final double bodyWidth = _median(normalizedBodyWidths);
  final double bodyHeight = math.max(
    maxBodyHeight,
    cellHeightPerHeight + lineAdvancePerHeight,
  );
  final GalLookupNormalizedRectV1 rect = GalLookupNormalizedRectV1(
    left: left,
    top: bodyTop,
    width: bodyWidth,
    height: bodyHeight,
  );
  final GalLookupTextLayoutV1 layout = GalLookupTextLayoutV1(
    fontFamily: draft.layout.fontFamily,
    fontSizePerClientHeight: draft.layout.fontSizePerClientHeight,
    letterSpacingPerClientHeight: draft.layout.letterSpacingPerClientHeight,
    lineHeight: draft.layout.lineHeight,
    textAlign: draft.layout.textAlign,
    verticalAlign: draft.layout.verticalAlign,
    paddingPerClientHeight: draft.layout.paddingPerClientHeight,
    cellGrid: grid,
  );
  if (!rect.isValid || !layout.isValid) {
    return const GalCalibrationImageFit(reason: 'ocr_geometry_out_of_bounds');
  }
  final GalLookupCalibrationDraft result = GalLookupCalibrationDraft(
    rect: rect,
    layout: layout,
    samples: draft.samples,
  );
  for (int i = 0; i < result.samples.length; i++) {
    final GalCalibrationPreview preview = await build(
      text: result.samples[i].capture.sourceText,
      client: result.samples[i].capture.referenceClient,
      rect: result.rect,
      layout: result.layout,
    );
    if (!preview.accepted) {
      return GalCalibrationImageFit(reason: 'preview_rejected', sampleIndex: i);
    }
  }
  return GalCalibrationImageFit(draft: result);
}

class GalCalibrationOcrEngine {
  GalCalibrationOcrEngine._({required this.detector, required this.recognizer});

  final PpOcrLineDetector detector;
  final PpOcrLineRecognizer recognizer;

  static Future<GalCalibrationOcrEngine> create({
    required Directory directory,
    OcrSessionFactory Function()? factoryBuilder,
  }) async {
    final OcrSessionFactory Function()? builder =
        factoryBuilder ?? ocrSessionFactoryBuilder;
    if (builder == null) throw StateError('ocr_session_factory_unavailable');
    final OcrSessionFactory factory = builder();
    Set<OcrExecutionProvider> available = const <OcrExecutionProvider>{};
    try {
      available = await factory.availableAcceleratedProviders();
    } catch (_) {
      // Calibration is a best-effort CPU job; provider probing must not block it.
    }
    final List<OcrExecutionProvider> detectionProviders =
        selectOcrExecutionProviders(
          kind: OcrModelKind.detection,
          platform: Platform.isWindows
              ? OcrPlatform.windows
              : Platform.isMacOS
              ? OcrPlatform.macos
              : Platform.isAndroid
              ? OcrPlatform.android
              : Platform.isIOS
              ? OcrPlatform.ios
              : OcrPlatform.linux,
          availableProviders: available,
        );
    final List<OcrExecutionProvider> recognitionProviders =
        selectOcrExecutionProviders(
          kind: OcrModelKind.recognition,
          platform: Platform.isWindows
              ? OcrPlatform.windows
              : Platform.isMacOS
              ? OcrPlatform.macos
              : Platform.isAndroid
              ? OcrPlatform.android
              : Platform.isIOS
              ? OcrPlatform.ios
              : OcrPlatform.linux,
          availableProviders: available,
        );
    final OcrSession detSession = await factory.createSession(
      p.join(directory.path, kPpOcrDetFileName),
      providers: detectionProviders,
    );
    final OcrSession recSession = await factory.createSession(
      p.join(directory.path, kPpOcrRecFileName),
      providers: recognitionProviders,
    );
    final String dict = await File(
      p.join(directory.path, kPpOcrRecDictFileName),
    ).readAsString();
    return GalCalibrationOcrEngine._(
      detector: PpOcrLineDetector(detSession),
      recognizer: PpOcrLineRecognizer(
        recSession,
        vocab: buildPpOcrCtcVocab(parsePpOcrCharacterDict(dict)),
      ),
    );
  }

  Future<List<GalCalibrationOcrLine>> read(
    Uint8List pngBytes,
    GalLookupNormalizedRectV1 rect,
    GalLookupReferenceClientV1 client,
  ) async {
    final img.Image? decoded = img.decodePng(pngBytes);
    if (decoded == null ||
        decoded.width != client.widthPx ||
        decoded.height != client.heightPx) {
      throw const FormatException('ocr_capture_decode_failed');
    }
    // Let the user draw a genuinely rough outer box.  A small internal margin
    // recovers glyph edges that sit just outside the handle while the text
    // matcher below removes unrelated name/button rows.
    final GalLookupNormalizedRectV1 searchRect = GalLookupNormalizedRectV1(
      left: (rect.left - rect.width * 0.04).clamp(0.0, 1.0),
      top: (rect.top - rect.height * 0.12).clamp(0.0, 1.0),
      width: (rect.width * 1.08).clamp(0.001, 1.0),
      height: (rect.height * 1.24).clamp(0.001, 1.0),
    );
    final int left = (searchRect.left * decoded.width).floor().clamp(
      0,
      decoded.width - 1,
    );
    final int top = (searchRect.top * decoded.height).floor().clamp(
      0,
      decoded.height - 1,
    );
    final int right = (searchRect.right * decoded.width).ceil().clamp(
      left + 1,
      decoded.width,
    );
    final int bottom = (searchRect.bottom * decoded.height).ceil().clamp(
      top + 1,
      decoded.height,
    );
    final img.Image crop = img.copyCrop(
      decoded,
      x: left,
      y: top,
      width: right - left,
      height: bottom - top,
    );
    final List<PpTextLine> detected = orderLinesForReading(
      filterThinLines(
        (await detector.detect(
          crop,
        )).where((PpTextLine line) => !line.vertical).toList(),
      ),
    );
    final List<GalCalibrationOcrLine> result = <GalCalibrationOcrLine>[];
    for (final PpTextLine line in detected) {
      final int x = line.rect.left.floor().clamp(0, crop.width - 1);
      final int y = line.rect.top.floor().clamp(0, crop.height - 1);
      final int r = line.rect.right.ceil().clamp(x + 1, crop.width);
      final int b = line.rect.bottom.ceil().clamp(y + 1, crop.height);
      final String text = await recognizer.recognizeLine(
        img.copyCrop(crop, x: x, y: y, width: r - x, height: b - y),
      );
      if (text.trim().isEmpty) continue;
      result.add(
        GalCalibrationOcrLine(
          text: text,
          rect: OcrRect(
            left: left + line.rect.left,
            top: top + line.rect.top,
            right: left + line.rect.right,
            bottom: top + line.rect.bottom,
          ),
          score: line.score,
        ),
      );
    }
    return result;
  }

  Future<void> close() async {
    await detector.close();
    await recognizer.close();
  }
}

class GalCalibrationOcrRunner {
  GalCalibrationOcrRunner({
    GalCalibrationOcrModelStore? models,
    OcrSessionFactory Function()? factoryBuilder,
  }) : models = models ?? GalCalibrationOcrModelStore(),
       _factoryBuilder = factoryBuilder;

  final GalCalibrationOcrModelStore models;
  final OcrSessionFactory Function()? _factoryBuilder;
  GalCalibrationOcrEngine? _engine;

  Future<GalCalibrationImageFit?> fit(
    GalLookupCalibrationDraft draft, {
    required GalCalibrationPreviewBuilder build,
  }) async {
    final GalCalibrationOcrModelStatus status = await models.status();
    if (!status.ready) return null;
    final Directory directory = await models.directory();
    _engine ??= await GalCalibrationOcrEngine.create(
      directory: directory,
      factoryBuilder: _factoryBuilder,
    );
    final List<GalCalibrationOcrAlignment> alignments = [];
    for (int i = 0; i < draft.samples.length; i++) {
      final GalCalibrationSample sample = draft.samples[i];
      final List<GalCalibrationOcrLine> lines = await _engine!.read(
        sample.capture.pngBytes,
        draft.rect,
        sample.capture.referenceClient,
      );
      if (lines.isEmpty) {
        return GalCalibrationImageFit(
          reason: 'ocr_lines_not_found',
          sampleIndex: i,
        );
      }
      final GalCalibrationOcrAlignment alignment = alignGalCalibrationOcrLines(
        sourceText: sample.capture.sourceText,
        lines: lines,
      );
      alignments.add(alignment);
    }
    return fitGalCalibrationOcrGrid(draft, alignments, build: build);
  }

  Future<void> close() async {
    final GalCalibrationOcrEngine? engine = _engine;
    _engine = null;
    await engine?.close();
  }
}

final GalCalibrationOcrRunner defaultGalCalibrationOcrRunner =
    GalCalibrationOcrRunner();

Future<GalCalibrationOcrModelInfo> _calibrationOcrModelStatus() async {
  final GalCalibrationOcrModelStatus status =
      await defaultGalCalibrationOcrRunner.models.status();
  return GalCalibrationOcrModelInfo(
    ready: status.ready,
    obtainedBytes: status.obtainedBytes,
    totalBytes: status.totalBytes,
  );
}

Stream<GalCalibrationOcrDownloadProgress> _downloadCalibrationOcrModels() {
  return defaultGalCalibrationOcrRunner.models.download().map(
    (MangaOcrDownloadEvent event) => GalCalibrationOcrDownloadProgress(
      fileName: event.fileName,
      receivedBytes: event.receivedBytes,
      totalBytes: event.totalBytes,
      done: event.done,
    ),
  );
}

/// Called once by the Flutter host after the ORT bindings are installed.
void installGalCalibrationOcrAssist() {
  galCalibrationOcrAssist = defaultGalCalibrationOcrRunner.fit;
  galCalibrationOcrModelStatus = _calibrationOcrModelStatus;
  galCalibrationOcrModelDownloader = _downloadCalibrationOcrModels;
}
