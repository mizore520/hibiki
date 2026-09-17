import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;
import 'dart:ui';

import 'package:fushi/src/lookup/gal_lookup_calibration_capture.dart';
import 'package:fushi/src/lookup/gal_lookup_calibration_preview.dart';
import 'package:fushi/src/lookup/gal_lookup_surface_profile.dart';
import 'package:fushi/src/storage/app_paths.dart';
import 'package:path/path.dart' as p;

/// Reference points belong to a frozen screenshot, never the live game. Their
/// normalized coordinates survive preview zoom without changing calibration.
class GalCalibrationSample {
  GalCalibrationSample({
    required this.capture,
    this.validation = false,
    Map<int, Offset> anchors = const {},
  }) : anchors = Map.unmodifiable(anchors);

  final GalLookupCalibrationCapture capture;
  final bool validation;
  final Map<int, Offset> anchors;

  GalCalibrationSample copyWith({
    bool? validation,
    Map<int, Offset>? anchors,
  }) => GalCalibrationSample(
    capture: capture,
    validation: validation ?? this.validation,
    anchors: anchors ?? this.anchors,
  );

  Map<String, Object?> toJson() => {
    'capture': capture.toJson(),
    'validation': validation,
    'anchors': [
      for (final MapEntry<int, Offset> anchor in anchors.entries)
        {'index': anchor.key, 'x': anchor.value.dx, 'y': anchor.value.dy},
    ],
  };

  static GalCalibrationSample fromJson(Map<String, dynamic> json) {
    final GalLookupCalibrationCapture? capture =
        GalLookupCalibrationCapture.tryFromJson(json['capture']);
    if (capture == null) throw const FormatException('invalid_capture');
    final Map<int, Offset> anchors = {};
    final List<dynamic> rawAnchors = json['anchors'] as List<dynamic>;
    if (rawAnchors.length > 128) throw const FormatException('too_many_points');
    for (final dynamic raw in rawAnchors) {
      final int index = raw['index'] as int;
      final Offset point = Offset(
        (raw['x'] as num).toDouble(),
        (raw['y'] as num).toDouble(),
      );
      if (index < 0 ||
          index >= capture.sourceText.length ||
          !point.dx.isFinite ||
          !point.dy.isFinite ||
          point.dx < 0 ||
          point.dx > 1 ||
          point.dy < 0 ||
          point.dy > 1) {
        throw const FormatException('invalid_point');
      }
      anchors[index] = point;
    }
    return GalCalibrationSample(
      capture: capture,
      validation: json['validation'] as bool,
      anchors: anchors,
    );
  }
}

class GalLookupCalibrationDraft {
  GalLookupCalibrationDraft({
    required this.rect,
    required this.layout,
    required List<GalCalibrationSample> samples,
  }) : samples = List.unmodifiable(samples);

  static const int maxSamples = 8;
  static const int maxImageBytes = 64 * 1024 * 1024;
  final GalLookupNormalizedRectV1 rect;
  final GalLookupTextLayoutV1 layout;
  final List<GalCalibrationSample> samples;

  bool validFor(String hash) =>
      RegExp(r'^[a-fA-F0-9]{64}$').hasMatch(hash) &&
      rect.isValid &&
      layout.isValid &&
      samples.length <= maxSamples &&
      samples.every((GalCalibrationSample s) => s.capture.exeSha256 == hash) &&
      samples.fold<int>(
            0,
            (int n, GalCalibrationSample s) => n + s.capture.pngBytes.length,
          ) <=
          maxImageBytes;

  Map<String, Object?> toJson() => {
    'version': 1,
    'bodyRect': rect.toJson(),
    'layout': layout.toJson(),
    'samples': samples.map((GalCalibrationSample s) => s.toJson()).toList(),
  };

  static GalLookupCalibrationDraft fromJson(Map<String, dynamic> json) {
    if (json['version'] != 1) throw const FormatException('draft_version');
    final GalLookupNormalizedRectV1? rect =
        GalLookupNormalizedRectV1.tryFromJson(json['bodyRect']);
    final GalLookupTextLayoutV1? layout = GalLookupTextLayoutV1.tryFromJson(
      json['layout'],
    );
    final List<dynamic> raw = json['samples'] as List<dynamic>;
    if (rect == null || layout == null || raw.length > maxSamples) {
      throw const FormatException('invalid_draft');
    }
    return GalLookupCalibrationDraft(
      rect: rect,
      layout: layout,
      samples: raw
          .map(
            (dynamic item) => GalCalibrationSample.fromJson(
              (item as Map).cast<String, dynamic>(),
            ),
          )
          .toList(),
    );
  }
}

/// Private, bounded drafts live under the app support root. No images/text are
/// placed in the source checkout, logs, preferences or an exported profile.
class GalLookupCalibrationStore {
  const GalLookupCalibrationStore({this.directory});
  final Directory? directory;

  Future<File> _file(String hash) async {
    if (!RegExp(r'^[a-fA-F0-9]{64}$').hasMatch(hash)) {
      throw const FormatException('invalid_executable_hash');
    }
    final Directory root =
        directory ??
        Directory(
          p.join(
            (await AppPaths.supportRootDirectory()).path,
            'gal_lookup_calibration',
          ),
        );
    await root.create(recursive: true);
    return File(p.join(root.path, '${hash.toLowerCase()}.json'));
  }

  Future<GalLookupCalibrationDraft?> load(String hash) async {
    final File file = await _file(hash);
    if (!await file.exists()) return null;
    if (await file.length() > 92 * 1024 * 1024) {
      throw const FormatException('draft_too_large');
    }
    final GalLookupCalibrationDraft draft = GalLookupCalibrationDraft.fromJson(
      (jsonDecode(await file.readAsString()) as Map).cast<String, dynamic>(),
    );
    if (!draft.validFor(hash)) throw const FormatException('draft_identity');
    return draft;
  }

  Future<void> save(String hash, GalLookupCalibrationDraft draft) async {
    if (!draft.validFor(hash)) throw const FormatException('invalid_draft');
    final File file = await _file(hash);
    final File pending = File('${file.path}.pending');
    await pending.writeAsString(jsonEncode(draft.toJson()), flush: true);
    await pending.rename(file.path);
  }
}

GalLookupTextLayoutV1 copyGalCalibrationLayout(
  GalLookupTextLayoutV1 layout, {
  String? fontFamily,
  double? fontSize,
  double? tracking,
  double? lineHeight,
}) => GalLookupTextLayoutV1(
  fontFamily: fontFamily ?? layout.fontFamily,
  fontSizePerClientHeight: fontSize ?? layout.fontSizePerClientHeight,
  letterSpacingPerClientHeight: tracking ?? layout.letterSpacingPerClientHeight,
  lineHeight: lineHeight ?? layout.lineHeight,
  textAlign: layout.textAlign,
  verticalAlign: layout.verticalAlign,
  paddingPerClientHeight: layout.paddingPerClientHeight,
);

/// Fits only translation and character spacing. Font, wrapping area and line
/// spacing remain explicit user choices; held-out samples never train the fit.
/// Numerical derivatives come from the SAME native layout as click handling.
Future<GalLookupCalibrationDraft?> fitGalCalibrationAnchors(
  GalLookupCalibrationDraft draft, {
  GalCalibrationPreviewBuilder build = GalLookupCalibrationPreviewChannel.build,
}) async {
  final List<GalCalibrationSample> training = draft.samples
      .where((GalCalibrationSample s) => !s.validation && s.anchors.isNotEmpty)
      .toList();
  if (training.isEmpty || draft.layout.textAlign != 'left') return null;
  final List<({double derivative, double dx, double dy})> rows = [];
  bool hasSeparatedPair = false;
  for (final GalCalibrationSample sample in training) {
    final GalLookupReferenceClientV1 client = sample.capture.referenceClient;
    final GalCalibrationPreview baseline = await build(
      text: sample.capture.sourceText,
      client: client,
      rect: draft.rect,
      layout: draft.layout,
    );
    if (!baseline.accepted) return null;
    // One physical pixel of tracking makes finite differences observable even
    // though the production hit regions round their edges to integer pixels.
    final double step = -1 / client.heightPx;
    final GalCalibrationPreview shifted = await build(
      text: sample.capture.sourceText,
      client: client,
      rect: draft.rect,
      layout: copyGalCalibrationLayout(
        draft.layout,
        tracking: draft.layout.letterSpacingPerClientHeight + step,
      ),
    );
    if (!shifted.accepted) return null;
    final List<GalCalibrationBox> marked = [];
    for (final MapEntry<int, Offset> anchor in sample.anchors.entries) {
      final GalCalibrationBox? box = baseline.boxForIndex(anchor.key);
      final GalCalibrationBox? moved = shifted.boxForIndex(anchor.key);
      if (box == null ||
          moved == null ||
          (box.rect.center.dy - moved.rect.center.dy).abs() > 1) {
        return null;
      }
      marked.add(box);
      rows.add((
        derivative:
            (moved.rect.center.dx - box.rect.center.dx) / client.widthPx / step,
        dx: anchor.value.dx - box.rect.center.dx / client.widthPx,
        dy: anchor.value.dy - box.rect.center.dy / client.heightPx,
      ));
    }
    for (final GalCalibrationBox a in marked) {
      for (final GalCalibrationBox b in marked) {
        if ((a.rect.center.dy - b.rect.center.dy).abs() <= 1 &&
            (a.rect.center.dx - b.rect.center.dx).abs() > a.rect.width) {
          hasSeparatedPair = true;
        }
      }
    }
  }
  if (!hasSeparatedPair || rows.length < 2) return null;
  final double meanD =
      rows.fold<double>(0, (double s, row) => s + row.derivative) / rows.length;
  final double meanX =
      rows.fold<double>(0, (double s, row) => s + row.dx) / rows.length;
  final double meanY =
      rows.fold<double>(0, (double s, row) => s + row.dy) / rows.length;
  double variance = 0;
  double covariance = 0;
  for (final row in rows) {
    variance += math.pow(row.derivative - meanD, 2).toDouble();
    covariance += (row.derivative - meanD) * (row.dx - meanX);
  }
  if (variance < 1e-8) return null;
  final double spacingDelta = covariance / variance;
  final GalLookupNormalizedRectV1 rect = GalLookupNormalizedRectV1(
    left: draft.rect.left + meanX - meanD * spacingDelta,
    top: draft.rect.top + meanY,
    width: draft.rect.width,
    height: draft.rect.height,
  );
  final GalLookupTextLayoutV1 layout = copyGalCalibrationLayout(
    draft.layout,
    tracking: draft.layout.letterSpacingPerClientHeight + spacingDelta,
  );
  if (!rect.isValid || !layout.isValid) return null;
  for (final GalCalibrationSample sample in draft.samples) {
    final GalCalibrationPreview candidate = await build(
      text: sample.capture.sourceText,
      client: sample.capture.referenceClient,
      rect: rect,
      layout: layout,
    );
    if (!candidate.accepted) return null;
  }
  // Reject a fit that changes the line of any marked character. A linear
  // spacing model cannot prove correspondence across a wrapping discontinuity.
  double before = 0;
  double after = 0;
  for (final GalCalibrationSample sample in training) {
    final GalLookupReferenceClientV1 client = sample.capture.referenceClient;
    final GalCalibrationPreview original = await build(
      text: sample.capture.sourceText,
      client: client,
      rect: draft.rect,
      layout: draft.layout,
    );
    final GalCalibrationPreview fitted = await build(
      text: sample.capture.sourceText,
      client: client,
      rect: rect,
      layout: layout,
    );
    if (!fitted.accepted) return null;
    for (final MapEntry<int, Offset> anchor in sample.anchors.entries) {
      final GalCalibrationBox? a = original.boxForIndex(anchor.key);
      final GalCalibrationBox? b = fitted.boxForIndex(anchor.key);
      if (a == null ||
          b == null ||
          ((b.rect.center.dy - a.rect.center.dy) / client.heightPx - meanY)
                  .abs() >
              2 / client.heightPx) {
        return null;
      }
      final Offset target = Offset(
        anchor.value.dx * client.widthPx,
        anchor.value.dy * client.heightPx,
      );
      before +=
          (a.rect.center - target).distanceSquared /
          (client.heightPx * client.heightPx);
      after +=
          (b.rect.center - target).distanceSquared /
          (client.heightPx * client.heightPx);
    }
  }
  if (after > before + 1e-10) return null;
  return GalLookupCalibrationDraft(
    rect: rect,
    layout: layout,
    samples: draft.samples,
  );
}
