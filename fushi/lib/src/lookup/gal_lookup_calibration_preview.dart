import 'package:flutter/services.dart';
import 'package:fushi/src/lookup/gal_lookup_surface_profile.dart';
import 'package:fushi/src/utils/misc/channel_constants.dart';

/// The native DirectWrite hit boxes, in client physical pixels. A preview never
/// registers an input surface or changes the current game session.
class GalCalibrationBox {
  const GalCalibrationBox(this.charIndex, this.charLength, this.rect);

  final int charIndex;
  final int charLength;
  final Rect rect;
}

class GalCalibrationPreview {
  const GalCalibrationPreview({required this.boxes, this.reason});

  final List<GalCalibrationBox> boxes;
  final String? reason;
  bool get accepted => reason == null && boxes.isNotEmpty;

  GalCalibrationBox? boxForIndex(int index) {
    for (final GalCalibrationBox box in boxes) {
      if (index >= box.charIndex && index < box.charIndex + box.charLength) {
        return box;
      }
    }
    return null;
  }
}

typedef GalCalibrationPreviewBuilder =
    Future<GalCalibrationPreview> Function({
      required String text,
      required GalLookupReferenceClientV1 client,
      required GalLookupNormalizedRectV1 rect,
      required GalLookupTextLayoutV1 layout,
    });

abstract final class GalLookupCalibrationPreviewChannel {
  static const MethodChannel _channel = FushiChannels.galHookText;

  static Future<GalCalibrationPreview> build({
    required String text,
    required GalLookupReferenceClientV1 client,
    required GalLookupNormalizedRectV1 rect,
    required GalLookupTextLayoutV1 layout,
  }) async {
    if (!client.isValid ||
        !rect.isValid ||
        !layout.isValid ||
        text.isEmpty ||
        text.length > 16384) {
      return const GalCalibrationPreview(boxes: [], reason: 'invalid_input');
    }
    final Map<Object?, Object?>? result = await _channel
        .invokeMapMethod<Object?, Object?>('attachedPreviewLayout', {
          'sourceText': text,
          'referenceClient': client.toJson(),
          'bodyRect': rect.toJson(),
          'layout': layout.toJson(),
        });
    if (result?['accepted'] != true || result?['boxes'] is! List) {
      return GalCalibrationPreview(
        boxes: const [],
        reason: result?['reason'] as String? ?? 'preview_unavailable',
      );
    }
    final List<GalCalibrationBox> boxes = [];
    for (final Object? raw in result!['boxes'] as List) {
      if (raw is! Map) {
        return const GalCalibrationPreview(boxes: [], reason: 'invalid_boxes');
      }
      final Object? index = raw['charIndex'];
      final Object? length = raw['charLength'];
      final List<Object?> edges = [
        raw['left'],
        raw['top'],
        raw['right'],
        raw['bottom'],
      ];
      if (index is! int ||
          length is! int ||
          index < 0 ||
          length <= 0 ||
          index + length > text.length ||
          edges.any((Object? v) => v is! num || !v.isFinite)) {
        return const GalCalibrationPreview(boxes: [], reason: 'invalid_boxes');
      }
      final Rect box = Rect.fromLTRB(
        (edges[0]! as num).toDouble(),
        (edges[1]! as num).toDouble(),
        (edges[2]! as num).toDouble(),
        (edges[3]! as num).toDouble(),
      );
      if (box.isEmpty ||
          box.left < 0 ||
          box.top < 0 ||
          box.right > client.widthPx ||
          box.bottom > client.heightPx) {
        return const GalCalibrationPreview(boxes: [], reason: 'invalid_boxes');
      }
      boxes.add(GalCalibrationBox(index, length, box));
    }
    return GalCalibrationPreview(boxes: List.unmodifiable(boxes));
  }
}
