import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:fushi/src/lookup/gal_lookup_surface_profile.dart';
import 'package:fushi/src/mining/galgame_window_gif.dart';
import 'package:fushi/src/mining/window_capture_channel.dart';

/// A locally captured screenshot and the exact selected Hook occurrence that
/// remained current throughout capture. Users still confirm visible text:
/// unchanged Hook identity cannot prove that a typewriter animation has ended.
@immutable
class GalLookupCalibrationCapture {
  GalLookupCalibrationCapture({
    required this.sourceText,
    required Uint8List pngBytes,
    required this.referenceClient,
    required this.exePath,
    required this.exeSha256,
    required this.sessionEpoch,
    required this.occurrenceId,
    required this.targetHwnd,
    required this.capturedAt,
    required this.selectedThreadKey,
    this.sourceSequence,
    this.captureMetadata,
  }) : pngBytes = Uint8List.fromList(pngBytes).asUnmodifiableView();

  static const int maxPngBytes = 12 * 1024 * 1024;
  static const int maxTextLength = 8192;
  static const int maxImagePixels = 32 * 1024 * 1024;

  final String sourceText;
  final Uint8List pngBytes;
  final GalLookupReferenceClientV1 referenceClient;
  final String exePath;
  final String exeSha256;
  final int sessionEpoch;
  final String occurrenceId;
  final int? sourceSequence;
  final int targetHwnd;
  final DateTime capturedAt;
  final String selectedThreadKey;
  final WindowCaptureMetadata? captureMetadata;

  Map<String, Object?> toJson() => <String, Object?>{
    'sourceText': sourceText,
    'pngBase64': base64Encode(pngBytes),
    'referenceClient': referenceClient.toJson(),
    'exePath': exePath,
    'exeSha256': exeSha256,
    'sessionEpoch': sessionEpoch,
    'occurrenceId': occurrenceId,
    'sourceSequence': sourceSequence,
    'targetHwnd': targetHwnd,
    'capturedAt': capturedAt.toUtc().toIso8601String(),
    'selectedThreadKey': selectedThreadKey,
    'captureMetadata': captureMetadata?.toJson(),
  };

  static GalLookupCalibrationCapture? tryFromJson(Object? value) {
    if (value is! Map) return null;
    const List<String> stringKeys = <String>[
      'sourceText',
      'pngBase64',
      'exePath',
      'exeSha256',
      'occurrenceId',
      'capturedAt',
      'selectedThreadKey',
    ];
    if (stringKeys.any((String key) => value[key] is! String) ||
        value['sessionEpoch'] is! int ||
        value['targetHwnd'] is! int ||
        (value['sourceSequence'] != null && value['sourceSequence'] is! int)) {
      return null;
    }
    final String text = value['sourceText'] as String;
    final String encoded = value['pngBase64'] as String;
    final String exePath = value['exePath'] as String;
    final String sha = value['exeSha256'] as String;
    final String occurrence = value['occurrenceId'] as String;
    final String thread = value['selectedThreadKey'] as String;
    final int epoch = value['sessionEpoch'] as int;
    final int hwnd = value['targetHwnd'] as int;
    final GalLookupReferenceClientV1? client =
        GalLookupReferenceClientV1.tryFromJson(value['referenceClient']);
    final WindowCaptureMetadata? metadata = WindowCaptureMetadata.tryFromMap(
      value['captureMetadata'],
    );
    final DateTime? capturedAt = DateTime.tryParse(
      value['capturedAt'] as String,
    );
    if (text.trim().isEmpty ||
        text.length > maxTextLength ||
        encoded.length > ((maxPngBytes + 2) ~/ 3) * 4 ||
        exePath.isEmpty ||
        exePath.length > 32768 ||
        !GalLookupSurfaceProfileV1.isValidSha256(sha) ||
        occurrence.isEmpty ||
        occurrence.length > 1024 ||
        thread.isEmpty ||
        thread.length > 4096 ||
        epoch <= 0 ||
        hwnd == 0 ||
        client == null ||
        capturedAt == null ||
        metadata == null ||
        !metadata.isCompleteClient ||
        metadata.capturedHwnd != hwnd ||
        metadata.clientWidthPx != client.widthPx ||
        metadata.clientHeightPx != client.heightPx ||
        metadata.dpi != client.dpi ||
        client.widthPx * client.heightPx > maxImagePixels) {
      return null;
    }
    final Uint8List bytes;
    try {
      bytes = base64Decode(encoded);
    } on FormatException {
      return null;
    }
    if (bytes.length > maxPngBytes || !_pngMatchesClient(bytes, metadata)) {
      return null;
    }
    return GalLookupCalibrationCapture(
      sourceText: text,
      pngBytes: bytes,
      referenceClient: client,
      exePath: exePath,
      exeSha256: sha,
      sessionEpoch: epoch,
      occurrenceId: occurrence,
      sourceSequence: value['sourceSequence'] as int?,
      targetHwnd: hwnd,
      capturedAt: capturedAt,
      selectedThreadKey: thread,
      captureMetadata: metadata,
    );
  }
}

/// Immutable boundary read from the existing selected-session pipeline.
@immutable
class GalLookupCalibrationCaptureSnapshot {
  const GalLookupCalibrationCaptureSnapshot({
    required this.sourceText,
    required this.referenceClient,
    required this.exePath,
    required this.exeSha256,
    required this.sessionEpoch,
    required this.occurrenceId,
    required this.targetHwnd,
    required this.targetPid,
    required this.selectedThreadKey,
    required this.sourceIdentity,
    this.sourceSequence,
  });

  final String sourceText;
  final GalLookupReferenceClientV1 referenceClient;
  final String exePath;
  final String exeSha256;
  final int sessionEpoch;
  final String occurrenceId;
  final int? sourceSequence;
  final int targetHwnd;
  final int targetPid;
  final String selectedThreadKey;
  final String sourceIdentity;

  bool sameOccurrenceAs(GalLookupCalibrationCaptureSnapshot other) =>
      sessionEpoch == other.sessionEpoch &&
      occurrenceId == other.occurrenceId &&
      sourceSequence == other.sourceSequence &&
      targetHwnd == other.targetHwnd &&
      targetPid == other.targetPid &&
      selectedThreadKey == other.selectedThreadKey &&
      sourceIdentity == other.sourceIdentity &&
      sourceText == other.sourceText &&
      referenceClient == other.referenceClient &&
      exePath == other.exePath &&
      exeSha256 == other.exeSha256;
}

typedef GalCalibrationSnapshotReader =
    GalLookupCalibrationCaptureSnapshot Function();
typedef GalCalibrationWindowCapture =
    Future<WindowCaptureResult> Function(int hwnd);
typedef GalCalibrationCaptureLeaseFactory =
    Future<GalHookCaptureLease?> Function();

/// Captures once, fails closed on a scene change, and always releases the exact
/// visibility lease. No delay, string search, historical-line or latest fallback.
Future<GalLookupCalibrationCapture> captureGalLookupCalibrationSample({
  required GalCalibrationSnapshotReader readSnapshot,
  required GalCalibrationWindowCapture captureWindow,
  required GalCalibrationCaptureLeaseFactory acquireLease,
}) async {
  final GalLookupCalibrationCaptureSnapshot before = readSnapshot();
  if (before.sourceText.trim().isEmpty ||
      before.sourceText.length > GalLookupCalibrationCapture.maxTextLength ||
      !before.referenceClient.isValid ||
      before.sessionEpoch <= 0 ||
      before.occurrenceId.isEmpty ||
      before.targetHwnd == 0 ||
      before.targetPid <= 0 ||
      before.selectedThreadKey.isEmpty ||
      !GalLookupSurfaceProfileV1.isValidSha256(before.exeSha256)) {
    throw StateError('calibration_sample_invalid_source');
  }
  void requireCurrent() {
    if (!before.sameOccurrenceAs(readSnapshot())) {
      throw StateError('calibration_sample_scene_changed');
    }
  }

  final GalHookCaptureLease? lease = await acquireLease();
  late final WindowCaptureResult result;
  late final DateTime capturedAt;
  try {
    requireCurrent();
    result = await captureWindow(before.targetHwnd);
    capturedAt = DateTime.now().toUtc();
    requireCurrent();
  } finally {
    if (lease != null) await lease.release();
  }
  requireCurrent();
  if (!result.ok) {
    throw StateError('calibration_sample_capture_failed: ${result.error}');
  }
  final WindowCaptureMetadata? metadata = result.metadata;
  if (metadata == null ||
      !metadata.isCompleteClient ||
      metadata.capturedHwnd != before.targetHwnd ||
      metadata.capturedPid != before.targetPid ||
      metadata.clientWidthPx != before.referenceClient.widthPx ||
      metadata.clientHeightPx != before.referenceClient.heightPx ||
      metadata.dpi != before.referenceClient.dpi) {
    throw StateError('calibration_sample_client_mapping_unavailable');
  }
  final Uint8List bytes = result.pngBytes!;
  if (bytes.length > GalLookupCalibrationCapture.maxPngBytes ||
      metadata.imageWidthPx * metadata.imageHeightPx >
          GalLookupCalibrationCapture.maxImagePixels) {
    throw StateError('calibration_sample_image_too_large');
  }
  if (!_pngMatchesClient(bytes, metadata)) {
    throw StateError('calibration_sample_image_dimensions_invalid');
  }
  return GalLookupCalibrationCapture(
    sourceText: before.sourceText,
    pngBytes: bytes,
    referenceClient: before.referenceClient,
    exePath: before.exePath,
    exeSha256: before.exeSha256,
    sessionEpoch: before.sessionEpoch,
    occurrenceId: before.occurrenceId,
    sourceSequence: before.sourceSequence,
    targetHwnd: before.targetHwnd,
    capturedAt: capturedAt,
    selectedThreadKey: before.selectedThreadKey,
    captureMetadata: metadata,
  );
}

bool _pngMatchesClient(Uint8List bytes, WindowCaptureMetadata metadata) {
  const List<int> signature = <int>[
    137,
    80,
    78,
    71,
    13,
    10,
    26,
    10,
    0,
    0,
    0,
    13,
    73,
    72,
    68,
    82,
  ];
  if (bytes.length < 33) return false;
  for (int i = 0; i < signature.length; i++) {
    if (bytes[i] != signature[i]) return false;
  }
  final ByteData header = ByteData.sublistView(bytes);
  return header.getUint32(16) == metadata.imageWidthPx &&
      header.getUint32(20) == metadata.imageHeightPx;
}
