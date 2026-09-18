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

import 'package:flutter/foundation.dart';
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

part 'gal_lookup_ocr_ink_geometry.dart';

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
    this.tokens = const <GalCalibrationOcrToken>[],
  });

  final String text;
  final OcrRect rect;
  final double score;
  final List<GalCalibrationOcrToken> tokens;
}

/// Approximate recognition-frame locations, not exact glyph outlines.
class GalCalibrationOcrToken {
  const GalCalibrationOcrToken(this.text, this.rect, this.confidence);
  final String text;
  final OcrRect rect;
  final double confidence;
}

class GalCalibrationOcrGlyph {
  const GalCalibrationOcrGlyph({
    required this.sourceIndex,
    required this.charLength,
    required this.cellOffset,
    required this.lineIndex,
    required this.rect,
    required this.confidence,
    this.inkMeasured = false,
  });

  final int sourceIndex;
  final int charLength;
  final int cellOffset;
  final int lineIndex;
  final OcrRect rect;
  final double confidence;
  final bool inkMeasured;
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
    this.hardBreakBefore = false,
  });

  final String value;
  final int index;
  final int length;
  final bool whitespace;
  final bool hardBreakBefore;
}

class _OcrUnit {
  const _OcrUnit({
    required this.value,
    required this.rect,
    this.confidence = 1,
  });

  final String value;
  final OcrRect rect;
  final double confidence;
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
  bool hardBreak = false;
  for (final int rune in text.runes) {
    final String value = String.fromCharCode(rune);
    final int length = value.length;
    if (rune == 0x0a || rune == 0x0d) {
      index += length;
      hardBreak = true;
      continue;
    }
    final bool combining =
        (rune >= 0x0300 && rune <= 0x036f) ||
        (rune >= 0x1ab0 && rune <= 0x1aff) ||
        (rune >= 0x1dc0 && rune <= 0x1dff) ||
        (rune >= 0x20d0 && rune <= 0x20ff) ||
        (rune >= 0xfe00 && rune <= 0xfe0f) ||
        (rune >= 0xfe20 && rune <= 0xfe2f) ||
        (rune >= 0x1f3fb && rune <= 0x1f3ff) ||
        (rune >= 0xe0100 && rune <= 0xe01ef);
    if (combining && !hardBreak && units.isNotEmpty && !units.last.whitespace) {
      final _SourceUnit previous = units.removeLast();
      units.add(
        _SourceUnit(
          value: previous.value + value,
          index: previous.index,
          length: previous.length + length,
          whitespace: false,
          hardBreakBefore: previous.hardBreakBefore,
        ),
      );
      index += length;
      continue;
    }
    units.add(
      _SourceUnit(
        value: value,
        index: index,
        length: length,
        whitespace: value == ' ' || value == '\t' || value == '\u3000',
        hardBreakBefore: hardBreak,
      ),
    );
    index += length;
    hardBreak = false;
  }
  return units;
}

List<_OcrUnit> _ocrUnits(GalCalibrationOcrLine line) {
  if (line.tokens.isNotEmpty) {
    if (line.tokens.map((GalCalibrationOcrToken t) => t.text).join() !=
        line.text) {
      return const <_OcrUnit>[];
    }
    final List<_OcrUnit> measured = <_OcrUnit>[];
    int offset = 0;
    final List<_SourceUnit> units = _sourceUnits(line.text);
    for (final _SourceUnit unit in units) {
      int tokenOffset = 0;
      final List<GalCalibrationOcrToken> parts = <GalCalibrationOcrToken>[];
      for (final GalCalibrationOcrToken token in line.tokens) {
        final int end = tokenOffset + token.text.length;
        if (tokenOffset < unit.index + unit.length && end > unit.index) {
          parts.add(token);
        }
        tokenOffset = end;
      }
      if (parts.isEmpty) return const <_OcrUnit>[];
      measured.add(
        _OcrUnit(
          value: unit.value,
          rect: OcrRect(
            left: parts.first.rect.left,
            top: line.rect.top,
            right: parts.last.rect.right,
            bottom: line.rect.bottom,
          ),
          confidence: parts
              .map((GalCalibrationOcrToken t) => t.confidence)
              .reduce(math.min),
        ),
      );
      offset += unit.length;
    }
    if (offset != line.text.length) return const <_OcrUnit>[];
    return measured;
  }
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

// Cache substring alignment once per detected row. The old implementation
// recomputed a full edit-distance matrix for every partition and every row run.
List<Map<int, double>> _lineCosts(List<_SourceUnit> source, String text) {
  final List<String> target = _sourceUnits(text)
      .where((_SourceUnit u) => !u.whitespace)
      .map((_SourceUnit u) => _foldOcrChar(u.value))
      .toList();
  final int limit = target.length + math.max(4, (target.length * .45).ceil());
  return List<Map<int, double>>.generate(source.length, (int start) {
    final Map<int, double> costs = <int, double>{};
    List<double> previous = List<double>.generate(
      target.length + 1,
      (int j) => j * .85,
    );
    int visible = 0;
    for (int end = start + 1; end <= source.length; end++) {
      final _SourceUnit unit = source[end - 1];
      if (end > start + 1 && unit.hardBreakBefore) break;
      if (!unit.whitespace) {
        if (++visible > limit) break;
        final List<double> current = List<double>.filled(target.length + 1, 0);
        current[0] = visible * .85;
        for (int j = 1; j <= target.length; j++) {
          current[j] = math.min(
            previous[j] + .85,
            math.min(
              current[j - 1] + .85,
              previous[j - 1] +
                  (_foldOcrChar(unit.value) == target[j - 1] ? 0 : .65),
            ),
          );
        }
        previous = current;
      }
      if (visible < math.max(1, (target.length * .5).floor())) continue;
      costs[end] =
          previous.last / math.max(1, math.max(visible, target.length)) +
          (visible - target.length).abs() * .025;
    }
    return costs;
  });
}

List<_LineSpan>? _partitionSource(
  List<_SourceUnit> source,
  List<List<Map<int, double>>> costs,
) {
  final int n = source.length;
  final int m = costs.length;
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
      for (final MapEntry<int, double> span in costs[i][start].entries) {
        final int end = span.key;
        final double cost = dp[i][start] + span.value;
        if (cost < dp[i + 1][end]) {
          dp[i + 1][end] = cost;
          previous[i + 1][end] = start;
        }
      }
    }
  }
  if (!dp[m][n].isFinite || dp[m][n] > math.max(.7, m * .48)) return null;
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
  final List<List<Map<int, double>>> costs = <List<Map<int, double>>>[
    for (final GalCalibrationOcrLine line in lines)
      _lineCosts(source, line.text),
  ];
  _OcrLineSelection? best;
  for (int start = 0; start < lines.length; start++) {
    for (int end = start + 1; end <= lines.length; end++) {
      final List<GalCalibrationOcrLine> candidate = lines.sublist(start, end);
      final List<_LineSpan>? spans = _partitionSource(
        source,
        costs.sublist(start, end),
      );
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
  for (int i = 0; i <= sourceTokens.length; i++) {
    dp[i][0] = i * 0.85;
  }
  for (int j = 0; j <= ocrTokens.length; j++) {
    dp[0][j] = j * 0.85;
  }
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
/// geometry-backed character hints. Recognition-frame positions are approximate;
/// text-only test/legacy callers may supply coarse uniformly spaced hints.
GalCalibrationOcrAlignment alignGalCalibrationOcrLines({
  required String sourceText,
  required List<GalCalibrationOcrLine> lines,
}) {
  final List<_SourceUnit> source = _sourceUnits(sourceText);
  if (source.length > 1024 || lines.length > 24) {
    return const GalCalibrationOcrAlignment(
      lines: [],
      confidence: 0,
      reason: 'ocr_region_too_large',
    );
  }
  final List<GalCalibrationOcrLine> usable = _mergeRowFragments(
    lines
        .where(
          (GalCalibrationOcrLine line) =>
              line.text.trim().isNotEmpty &&
              line.text.length <= 1024 &&
              line.score.isFinite &&
              line.score >= kPpDetBoxThresh &&
              line.rect.left.isFinite &&
              line.rect.top.isFinite &&
              line.rect.right.isFinite &&
              line.rect.bottom.isFinite &&
              line.rect.width > 0 &&
              line.rect.height > 0,
        )
        .toList(),
  );
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
          confidence: ocrUnit.confidence * (exact ? 1 : 0.35),
        ),
      );
      confidence += ocrUnit.confidence * (exact ? 1 : 0.35);
    }
    final List<GalCalibrationOcrGlyph> reliable = glyphs
        .where(
          (GalCalibrationOcrGlyph g) =>
              g.confidence.isFinite &&
              g.confidence >= .5 &&
              g.rect.centerX.isFinite &&
              g.rect.centerY.isFinite &&
              g.rect.width > 0,
        )
        .toList();
    if (reliable.length < math.max(1, (sourceVisible * .65).ceil()) ||
        (sourceVisible >= 5 &&
            reliable.last.cellOffset - reliable.first.cellOffset <
                (span.end - span.start - 1) * .6)) {
      return const GalCalibrationOcrAlignment(
        lines: [],
        confidence: 0,
        reason: 'ocr_geometry_weak',
      );
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
  final int totalGlyphs = source.where((_SourceUnit u) => !u.whitespace).length;
  final double normalized = totalGlyphs == 0 ? 0 : confidence / totalGlyphs;
  if (normalized < 0.65) {
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

// Detectors may split a horizontal row at spaces or changes of ink color.
// Join only nearby boxes on the same baseline; preserve measured token x's.
List<GalCalibrationOcrLine> _mergeRowFragments(
  List<GalCalibrationOcrLine> input,
) {
  final List<List<GalCalibrationOcrLine>> rows =
      <List<GalCalibrationOcrLine>>[];
  final List<GalCalibrationOcrLine> ordered = input.toList()
    ..sort(
      (GalCalibrationOcrLine a, GalCalibrationOcrLine b) =>
          a.rect.centerY.compareTo(b.rect.centerY),
    );
  for (final GalCalibrationOcrLine line in ordered) {
    List<GalCalibrationOcrLine>? owner;
    for (final List<GalCalibrationOcrLine> row in rows) {
      final OcrRect anchor = row.first.rect;
      final double minHeight = math.min(anchor.height, line.rect.height);
      final double overlap =
          math.min(anchor.bottom, line.rect.bottom) -
          math.max(anchor.top, line.rect.top);
      if (minHeight / math.max(anchor.height, line.rect.height) < .65 ||
          overlap < minHeight * .65) {
        continue;
      }
      if (row.any((GalCalibrationOcrLine other) {
        final double gap =
            math.max(other.rect.left, line.rect.left) -
            math.min(other.rect.right, line.rect.right);
        if (gap > minHeight * 2.5) return false;
        if (gap >= -minHeight * .3) return true;
        // DB's expanded rectangles can overlap while the actual recognized
        // characters do not. Use token order to distinguish this from a
        // duplicate detection; a rectangle overlap threshold alone split rows.
        final GalCalibrationOcrLine left = other.rect.left < line.rect.left
            ? other
            : line;
        final GalCalibrationOcrLine right = identical(left, other)
            ? line
            : other;
        final List<GalCalibrationOcrToken> leftTokens = left.tokens
            .where(
              (GalCalibrationOcrToken t) =>
                  t.confidence >= .5 && t.rect.width > 0,
            )
            .toList();
        final List<GalCalibrationOcrToken> rightTokens = right.tokens
            .where(
              (GalCalibrationOcrToken t) =>
                  t.confidence >= .5 && t.rect.width > 0,
            )
            .toList();
        return leftTokens.isNotEmpty &&
            rightTokens.isNotEmpty &&
            leftTokens
                    .map((GalCalibrationOcrToken t) => t.rect.right)
                    .reduce(math.max) <=
                rightTokens
                    .map((GalCalibrationOcrToken t) => t.rect.left)
                    .reduce(math.min);
      })) {
        owner = row;
        break;
      }
    }
    if (owner == null) {
      rows.add(<GalCalibrationOcrLine>[line]);
    } else {
      owner.add(line);
    }
  }
  return <GalCalibrationOcrLine>[
    for (final List<GalCalibrationOcrLine> row in rows)
      _mergeOneRow(
        row..sort(
          (GalCalibrationOcrLine a, GalCalibrationOcrLine b) =>
              a.rect.left.compareTo(b.rect.left),
        ),
      ),
  ]..sort(
    (GalCalibrationOcrLine a, GalCalibrationOcrLine b) =>
        a.rect.centerY.compareTo(b.rect.centerY),
  );
}

GalCalibrationOcrLine _mergeOneRow(List<GalCalibrationOcrLine> row) {
  if (row.length == 1) return row.single;
  return GalCalibrationOcrLine(
    text: row.map((GalCalibrationOcrLine line) => line.text).join(),
    rect: OcrRect(
      left: row.first.rect.left,
      right: row.last.rect.right,
      top: row
          .map((GalCalibrationOcrLine line) => line.rect.top)
          .reduce(math.min),
      bottom: row
          .map((GalCalibrationOcrLine line) => line.rect.bottom)
          .reduce(math.max),
    ),
    score: row.map((GalCalibrationOcrLine line) => line.score).reduce(math.min),
    tokens: <GalCalibrationOcrToken>[
      for (final GalCalibrationOcrLine line in row)
        for (final _OcrUnit token in _ocrUnits(line))
          GalCalibrationOcrToken(token.value, token.rect, token.confidence),
    ],
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
  final List<int> training = <int>[
    for (int i = 0; i < draft.samples.length; i++)
      if (!draft.samples[i].validation) i,
  ];
  final List<double> pitches = <double>[];
  final List<double> heights = <double>[];
  final List<double> advances = <double>[];
  final List<double> inkAdvances = <double>[];
  final bool hasInkGeometry = training.any(
    (int i) => alignments[i].lines.any(
      (GalCalibrationOcrMatchedLine line) =>
          line.glyphs.any((GalCalibrationOcrGlyph glyph) => glyph.inkMeasured),
    ),
  );
  for (final int i in training) {
    final double height = draft.samples[i].capture.referenceClient.heightPx
        .toDouble();
    final List<GalCalibrationOcrMatchedLine> lines = alignments[i].lines;
    for (final GalCalibrationOcrMatchedLine line in lines) {
      final bool measured = line.glyphs.any(
        (GalCalibrationOcrGlyph g) => g.inkMeasured,
      );
      if (hasInkGeometry && !measured) continue;
      heights.add(line.rect.height / height);
      final List<GalCalibrationOcrGlyph> glyphs = _reliableGlyphs(line);
      // Long baselines reduce the effect of CTC's horizontal quantization and
      // small punctuation. Adjacent differences alone amplify that noise.
      final List<double> slopes = <double>[];
      for (int a = 0; a < glyphs.length; a++) {
        for (int b = a + 1; b < glyphs.length; b++) {
          final int delta = glyphs[b].cellOffset - glyphs[a].cellOffset;
          if (delta < (glyphs.length >= 5 ? 3 : 1)) continue;
          final double slope =
              (glyphs[b].rect.centerX - glyphs[a].rect.centerX) / delta;
          if (slope > 0) slopes.add(slope / height);
        }
      }
      if (slopes.isNotEmpty) pitches.add(_median(slopes));
    }
    for (int row = 1; row < lines.length; row++) {
      final double advance =
          (lines[row].rect.centerY - lines[row - 1].rect.centerY) / height;
      advances.add(advance);
      if (_hasMeasuredInk(lines[row]) && _hasMeasuredInk(lines[row - 1])) {
        inkAdvances.add(advance);
      }
    }
  }
  if (advances.isEmpty) {
    return const GalCalibrationImageFit(reason: 'multiline_required');
  }
  final double pitch = _median(pitches);
  final double lineAdvance = _median(
    inkAdvances.isEmpty ? advances : inkAdvances,
  );
  // DB detector boxes include an unclip margin. Hit rows end at the midpoint
  // between baselines so that that margin cannot create overlapping targets.
  final double cellHeight = math.min(
    hasInkGeometry && heights.isNotEmpty
        ? heights.reduce(math.max)
        : _median(heights),
    lineAdvance,
  );
  if (!pitch.isFinite ||
      !cellHeight.isFinite ||
      !lineAdvance.isFinite ||
      pitch <= 0 ||
      cellHeight <= 0 ||
      lineAdvance < cellHeight) {
    return const GalCalibrationImageFit(reason: 'ocr_geometry_weak');
  }
  final List<double> lefts = <double>[];
  final List<double> tops = <double>[];
  for (final int i in training) {
    final GalLookupReferenceClientV1 client =
        draft.samples[i].capture.referenceClient;
    final List<GalCalibrationOcrMatchedLine> lines = alignments[i].lines;
    final List<GalCalibrationOcrGlyph> first = _reliableGlyphs(lines.first);
    if (first.isEmpty) {
      return GalCalibrationImageFit(
        reason: 'ocr_geometry_weak',
        sampleIndex: i,
      );
    }
    if (!hasInkGeometry || _hasMeasuredInk(lines.first)) {
      lefts.add(
        _median(<double>[
          for (final GalCalibrationOcrGlyph glyph in first)
            (glyph.rect.centerX -
                    (glyph.cellOffset + .5) * pitch * client.heightPx) /
                client.widthPx,
        ]),
      );
    }
    if (!hasInkGeometry || lines.any(_hasMeasuredInk)) {
      tops.add(
        _median(<double>[
          for (int row = 0; row < lines.length; row++)
            if (!hasInkGeometry || _hasMeasuredInk(lines[row]))
              lines[row].rect.centerY / client.heightPx -
                  row * lineAdvance -
                  cellHeight / 2,
        ]),
      );
    }
  }
  final double left = _median(lefts);
  final double top = _median(tops);
  if (!left.isFinite || !top.isFinite) {
    return const GalCalibrationImageFit(reason: 'ocr_geometry_weak');
  }
  // Measured continuation rows own indentation when available. A short
  // CTC-only tail may validate that choice, but cannot invent a competing grid.
  final Map<bool, Set<int>> measuredIndents = <bool, Set<int>>{
    false: <int>{},
    true: <int>{},
  };
  for (final int i in training) {
    final GalLookupCalibrationCapture capture = draft.samples[i].capture;
    final bool quoted =
        capture.sourceText.startsWith('「') ||
        capture.sourceText.startsWith('『');
    final List<GalCalibrationOcrMatchedLine> lines = alignments[i].lines;
    for (final GalCalibrationOcrMatchedLine line in lines.skip(1)) {
      if (!_hasMeasuredInk(line)) continue;
      final double offset = _lineCellOffset(
        line,
        left,
        pitch,
        capture.referenceClient,
      );
      if (!offset.isFinite || (offset - offset.round()).abs() > .35) {
        return GalCalibrationImageFit(
          reason: 'ocr_indent_ambiguous',
          sampleIndex: i,
        );
      }
      measuredIndents[quoted]!.add(offset.round());
    }
  }
  if (measuredIndents.values.any((Set<int> values) => values.length > 1)) {
    return const GalCalibrationImageFit(reason: 'ocr_geometry_inconsistent');
  }
  final Set<int> plainIndents = <int>{};
  final Set<int> quotedIndents = <int>{};
  final List<({int columns, bool softWrap, bool punctuation, int sample})>
  rowEnds = [];
  final Set<int> wrapColumns = <int>{};
  double observedHeight = 0;
  for (final int i in training) {
    final GalLookupCalibrationCapture capture = draft.samples[i].capture;
    final GalLookupReferenceClientV1 client = capture.referenceClient;
    final List<_SourceUnit> source = _sourceUnits(capture.sourceText);
    final List<GalCalibrationOcrMatchedLine> lines = alignments[i].lines;
    final bool quoted =
        capture.sourceText.startsWith('「') ||
        capture.sourceText.startsWith('『');
    observedHeight = math.max(
      observedHeight,
      (lines.length - 1) * lineAdvance + cellHeight,
    );
    for (int row = 0; row < lines.length; row++) {
      final GalCalibrationOcrMatchedLine line = lines[row];
      final List<GalCalibrationOcrGlyph> glyphs = _reliableGlyphs(line);
      if (glyphs.isEmpty) {
        return GalCalibrationImageFit(
          reason: 'ocr_geometry_weak',
          sampleIndex: i,
        );
      }
      final double offset = _lineCellOffset(line, left, pitch, client);
      final Set<int> proven = measuredIndents[quoted]!;
      final bool shortFallback = hasInkGeometry && !_hasMeasuredInk(line);
      final int indent = row == 0
          ? 0
          : shortFallback && proven.isNotEmpty
          ? proven.single
          : offset.round();
      final double tolerance = shortFallback && proven.isNotEmpty ? .42 : .35;
      if (indent < 0 || indent > 8 || (offset - indent).abs() > tolerance) {
        return GalCalibrationImageFit(
          reason: 'ocr_indent_ambiguous',
          sampleIndex: i,
        );
      }
      if (row > 0) (quoted ? quotedIndents : plainIndents).add(indent);
      final bool softWrap =
          row + 1 < lines.length &&
          line.sourceEnd < source.length &&
          !source[line.sourceEnd].hardBreakBefore;
      rowEnds.add((
        columns: indent + line.cellCount,
        softWrap: softWrap,
        punctuation:
            line.sourceEnd > 0 &&
            _hangingPunctuation(source[line.sourceEnd - 1].value),
        sample: i,
      ));
      // Only a *natural* wrap proves capacity. A short sentence or an
      // explicit newline is not evidence of the dialogue box's right edge.
      if (row + 1 < lines.length &&
          line.sourceEnd < source.length &&
          !source[line.sourceEnd].hardBreakBefore) {
        wrapColumns.add(indent + line.cellCount);
      }
    }
  }
  if (wrapColumns.isEmpty) {
    return const GalCalibrationImageFit(reason: 'multiline_required');
  }
  final int columns = wrapColumns.reduce(math.min);
  bool hanging = false;
  for (final row in rowEnds) {
    if (row.columns > columns || (row.softWrap && row.columns != columns)) {
      if (row.columns == columns + 1 && row.punctuation) {
        hanging = true;
      } else {
        return GalCalibrationImageFit(
          reason: 'ocr_geometry_inconsistent',
          sampleIndex: row.sample,
        );
      }
    }
  }
  if (plainIndents.length > 1 || quotedIndents.length > 1) {
    return const GalCalibrationImageFit(reason: 'ocr_geometry_inconsistent');
  }
  final int plainIndent = plainIndents.isEmpty ? 0 : plainIndents.single;
  final int quotedIndent = quotedIndents.isEmpty
      ? plainIndent
      : quotedIndents.single;
  final GalLookupCellGridV1 grid = GalLookupCellGridV1(
    advancePerClientHeight: pitch,
    lineAdvancePerClientHeight: lineAdvance,
    cellHeightPerClientHeight: cellHeight,
    columns: columns,
    continuationIndent: plainIndent,
    quotedContinuationIndent: quotedIndent,
    hangingPunctuation: hanging,
  );
  // Compute the frame from the common capacity, never the median length of
  // observed sentences. Keep the rough frame's vertical room for longer text.
  // One physical pixel covers the native integer bounds rounding.
  double bodyWidth = 0;
  double roundingHeight = 0;
  for (final int i in training) {
    final GalLookupReferenceClientV1 client =
        draft.samples[i].capture.referenceClient;
    bodyWidth = math.max(
      bodyWidth,
      ((columns + (hanging ? 1 : 0)) * pitch * client.heightPx + 1) /
          client.widthPx,
    );
    roundingHeight = math.max(roundingHeight, 1 / client.heightPx);
  }
  // A roughly drawn bottom edge can cut through a row. Round that capacity
  // outward to a complete row, without using held-out samples to fit geometry.
  final int roughRows = math.max(
    1,
    ((draft.searchRect.bottom - top - cellHeight) / lineAdvance).ceil() + 1,
  );
  final double bodyHeight =
      math.max(observedHeight, (roughRows - 1) * lineAdvance + cellHeight) +
      roundingHeight;
  final GalLookupNormalizedRectV1 rect = GalLookupNormalizedRectV1(
    left: left,
    top: top,
    width: bodyWidth,
    height: math.min(1 - top, bodyHeight),
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
    searchRect: draft.searchRect,
    layout: layout,
    samples: draft.samples,
  );
  for (int i = 0; i < result.samples.length; i++) {
    final GalLookupCalibrationCapture capture = result.samples[i].capture;
    final GalCalibrationPreview preview = await build(
      text: capture.sourceText,
      client: capture.referenceClient,
      rect: result.rect,
      layout: result.layout,
    );
    if (!preview.accepted) {
      return GalCalibrationImageFit(reason: 'preview_rejected', sampleIndex: i);
    }
    // Validate actual native boxes against *every* screenshot, including the
    // held-out samples. They never influence fitted parameters above.
    final double pxPitch = pitch * capture.referenceClient.heightPx;
    final double pxHeight = cellHeight * capture.referenceClient.heightPx;
    for (final GalCalibrationOcrMatchedLine line in alignments[i].lines) {
      final List<GalCalibrationOcrGlyph> glyphs = _reliableGlyphs(line);
      if (glyphs.isEmpty) {
        return GalCalibrationImageFit(
          reason: 'ocr_geometry_weak',
          sampleIndex: i,
        );
      }
      for (final GalCalibrationOcrGlyph glyph in glyphs) {
        final GalCalibrationBox? box = preview.boxForIndex(glyph.sourceIndex);
        if (box == null ||
            box.charIndex != glyph.sourceIndex ||
            box.charLength != glyph.charLength ||
            (box.rect.center.dx - glyph.rect.centerX).abs() >
                pxPitch * (glyph.inkMeasured ? .14 : .42) + 1 ||
            (box.rect.center.dy - glyph.rect.centerY).abs() >
                pxHeight * (glyph.inkMeasured ? .2 : .5) + 1 ||
            (glyph.inkMeasured &&
                (glyph.rect.left < box.rect.left - 2 ||
                    glyph.rect.right > box.rect.right + 2 ||
                    glyph.rect.top < box.rect.top - 2 ||
                    glyph.rect.bottom > box.rect.bottom + 2))) {
          return GalCalibrationImageFit(
            reason: 'ocr_geometry_inconsistent',
            sampleIndex: i,
          );
        }
      }
    }
  }
  return GalCalibrationImageFit(draft: result);
}

bool _hangingPunctuation(String value) =>
    value.runes.length == 1 &&
    '」』）)]｝}】〕〉》、。，．！？!?ぁぃぅぇぉっゃゅょゎァィゥェォッャュョヮヵヶ'.contains(value);

bool _hasMeasuredInk(GalCalibrationOcrMatchedLine line) =>
    line.glyphs.any((GalCalibrationOcrGlyph glyph) => glyph.inkMeasured);

double _lineCellOffset(
  GalCalibrationOcrMatchedLine line,
  double left,
  double pitch,
  GalLookupReferenceClientV1 client,
) => _median(<double>[
  for (final GalCalibrationOcrGlyph glyph in _reliableGlyphs(line))
    (glyph.rect.centerX - left * client.widthPx) / (pitch * client.heightPx) -
        glyph.cellOffset -
        .5,
]);

List<GalCalibrationOcrGlyph> _reliableGlyphs(
  GalCalibrationOcrMatchedLine line,
) =>
    line.glyphs
        .where(
          (GalCalibrationOcrGlyph glyph) =>
              glyph.confidence.isFinite &&
              glyph.confidence >= .5 &&
              (!line.glyphs.any((GalCalibrationOcrGlyph g) => g.inkMeasured) ||
                  glyph.inkMeasured) &&
              glyph.rect.centerX.isFinite &&
              glyph.rect.centerY.isFinite &&
              glyph.rect.width > 0 &&
              glyph.rect.height > 0,
        )
        .toList()
      ..sort(
        (GalCalibrationOcrGlyph a, GalCalibrationOcrGlyph b) =>
            a.cellOffset.compareTo(b.cellOffset),
      );

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
    OcrSession? recSession;
    try {
      recSession = await factory.createSession(
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
    } catch (_) {
      try {
        await recSession?.close();
      } finally {
        await detSession.close();
      }
      rethrow;
    }
  }

  Future<List<GalCalibrationOcrLine>> read(
    Uint8List pngBytes,
    GalLookupNormalizedRectV1 rect,
    GalLookupReferenceClientV1 client,
  ) async {
    final img.Image? decoded = await compute(img.decodePng, pngBytes);
    if (decoded == null ||
        decoded.width != client.widthPx ||
        decoded.height != client.heightPx) {
      throw const FormatException('ocr_capture_decode_failed');
    }
    // The visible search selection is authoritative. Never silently scan
    // names/buttons outside it to compensate for a clipped selection.
    final GalLookupNormalizedRectV1 searchRect = rect;
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
    // Manga's median-thickness filter can delete a short dialogue row.
    // Text matching below determines which detected rows belong to the Hook.
    final List<PpTextLine> detected =
        (await detector.detect(
          crop,
        )).where((PpTextLine line) => !line.vertical).toList()..sort(
          (PpTextLine a, PpTextLine b) =>
              a.rect.centerY.compareTo(b.rect.centerY),
        );
    final List<GalCalibrationOcrLine> result = <GalCalibrationOcrLine>[];
    for (final PpTextLine line in detected) {
      final int x = line.rect.left.floor().clamp(0, crop.width - 1);
      final int y = line.rect.top.floor().clamp(0, crop.height - 1);
      final int r = line.rect.right.ceil().clamp(x + 1, crop.width);
      final int b = line.rect.bottom.ceil().clamp(y + 1, crop.height);
      final PpOcrLineRecognition recognition = await recognizer
          .recognizeLineDetailed(
            img.copyCrop(crop, x: x, y: y, width: r - x, height: b - y),
          );
      final String text = recognition.text;
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
          tokens: <GalCalibrationOcrToken>[
            for (final PpOcrCtcToken token in recognition.tokens)
              GalCalibrationOcrToken(
                token.text,
                OcrRect(
                  left: left + x + (token.left ?? 0),
                  top: (top + y).toDouble(),
                  right: left + x + (token.right ?? 0),
                  bottom: (top + b).toDouble(),
                ),
                token.hasPosition ? token.confidence : 0,
              ),
          ],
        ),
      );
    }
    return result;
  }

  Future<void> close() async {
    try {
      await recognizer.close();
    } finally {
      await detector.close();
    }
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
  bool _fitting = false;

  Future<GalCalibrationImageFit?> fit(
    GalLookupCalibrationDraft draft, {
    required GalCalibrationPreviewBuilder build,
  }) async {
    if (_fitting) return const GalCalibrationImageFit(reason: 'ocr_busy');
    _fitting = true;
    GalCalibrationOcrEngine? engine;
    try {
      final GalCalibrationOcrModelStatus status = await models.status();
      if (!status.ready) return null;
      engine = await GalCalibrationOcrEngine.create(
        directory: await models.directory(),
        factoryBuilder: _factoryBuilder,
      );
      final List<GalCalibrationOcrAlignment> alignments =
          <GalCalibrationOcrAlignment>[];
      for (int i = 0; i < draft.samples.length; i++) {
        final GalCalibrationSample sample = draft.samples[i];
        final List<GalCalibrationOcrLine> lines = await engine.read(
          sample.capture.pngBytes,
          draft.searchRect,
          sample.capture.referenceClient,
        );
        if (lines.isEmpty) {
          return GalCalibrationImageFit(
            reason: 'ocr_lines_not_found',
            sampleIndex: i,
          );
        }
        final GalCalibrationOcrAlignment alignment = await compute(
          _alignCapturedLines,
          (text: sample.capture.sourceText, lines: lines),
        );
        if (!alignment.accepted) {
          return GalCalibrationImageFit(
            reason: alignment.reason,
            sampleIndex: i,
          );
        }
        alignments.add(
          await compute(refineGalCalibrationOcrGeometry, (
            pngBytes: sample.capture.pngBytes,
            text: sample.capture.sourceText,
            searchRect: draft.searchRect,
            alignment: alignment,
          )),
        );
      }
      return await fitGalCalibrationOcrGrid(draft, alignments, build: build);
    } finally {
      // A fit owns both sessions, including error/closed-dialog paths. No
      // unbounded app-global native session cache or concurrent use/disposal.
      try {
        await engine?.close();
      } finally {
        _fitting = false;
      }
    }
  }
}

GalCalibrationOcrAlignment _alignCapturedLines(
  ({String text, List<GalCalibrationOcrLine> lines}) input,
) => alignGalCalibrationOcrLines(sourceText: input.text, lines: input.lines);

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
