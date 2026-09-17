import 'dart:math' as math;
import 'dart:typed_data';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fushi/i18n/strings.g.dart';
import 'package:fushi/src/lookup/gal_lookup_calibration_preview.dart';
import 'package:fushi/src/lookup/gal_lookup_surface_profile.dart';

enum GalCalibrationEditMode { region, points, pan }

/// Edits screenshot coordinates only. Zoom never changes stored coordinates.
class GalLookupCalibrationCanvas extends StatefulWidget {
  const GalLookupCalibrationCanvas({
    required this.pngBytes,
    required this.client,
    required this.rect,
    required this.boxes,
    required this.anchors,
    required this.selectedIndex,
    required this.mode,
    required this.opacity,
    required this.enabled,
    required this.onRectChanged,
    required this.onAnchorChanged,
    required this.onIndexSelected,
    required this.onHover,
    super.key,
  });

  final Uint8List pngBytes;
  final GalLookupReferenceClientV1 client;
  final GalLookupNormalizedRectV1 rect;
  final List<GalCalibrationBox> boxes;
  final Map<int, Offset> anchors;
  final int? selectedIndex;
  final GalCalibrationEditMode mode;
  final double opacity;
  final bool enabled;
  final ValueChanged<GalLookupNormalizedRectV1> onRectChanged;
  final void Function(int index, Offset point) onAnchorChanged;
  final ValueChanged<int> onIndexSelected;
  final ValueChanged<int?> onHover;

  @override
  State<GalLookupCalibrationCanvas> createState() =>
      _GalLookupCalibrationCanvasState();
}

class _GalLookupCalibrationCanvasState
    extends State<GalLookupCalibrationCanvas> {
  final GlobalKey _sceneKey = GlobalKey();
  final TransformationController _transform = TransformationController();
  Rect? _dragRect;
  Offset? _dragStart;
  Offset? _anchorStart;
  Offset? _anchorOriginal;
  int? _dragPointer;
  Size _sceneSize = Size.zero;

  @override
  void dispose() {
    _transform.dispose();
    super.dispose();
  }

  Offset _normalized(Offset global) {
    final RenderBox box =
        _sceneKey.currentContext!.findRenderObject()! as RenderBox;
    final Offset at = box.globalToLocal(global);
    return Offset(at.dx / _sceneSize.width, at.dy / _sceneSize.height);
  }

  Rect get _rect => Rect.fromLTWH(
    widget.rect.left,
    widget.rect.top,
    widget.rect.width,
    widget.rect.height,
  );

  void _beginRect(Offset global) {
    _dragRect = _rect;
    _dragStart = _normalized(global);
  }

  void _dragRegion(Offset global, Alignment? handle) {
    final Rect? original = _dragRect;
    final Offset? start = _dragStart;
    if (!widget.enabled || original == null || start == null) return;
    final Offset delta = _normalized(global) - start;
    // Older drafts may have a valid region smaller than the editor minimum.
    final double minWidth = math.min(
      original.width,
      math.max(0.001, 8 / widget.client.widthPx),
    );
    final double minHeight = math.min(
      original.height,
      math.max(0.001, 8 / widget.client.heightPx),
    );
    final Rect next;
    if (handle == null) {
      next = Rect.fromLTWH(
        (original.left + delta.dx).clamp(0, 1 - original.width),
        (original.top + delta.dy).clamp(0, 1 - original.height),
        original.width,
        original.height,
      );
    } else {
      next = Rect.fromLTRB(
        handle.x < 0
            ? (original.left + delta.dx).clamp(0, original.right - minWidth)
            : original.left,
        handle.y < 0
            ? (original.top + delta.dy).clamp(0, original.bottom - minHeight)
            : original.top,
        handle.x > 0
            ? (original.right + delta.dx).clamp(original.left + minWidth, 1)
            : original.right,
        handle.y > 0
            ? (original.bottom + delta.dy).clamp(original.top + minHeight, 1)
            : original.bottom,
      );
    }
    final GalLookupNormalizedRectV1 value = GalLookupNormalizedRectV1(
      left: next.left,
      top: next.top,
      width: next.width,
      height: next.height,
    );
    if (value.isValid) widget.onRectChanged(value);
  }

  void _moveAnchor(int index, Offset global) {
    if (!widget.enabled) return;
    final Offset at = _normalized(global);
    widget.onAnchorChanged(index, Offset(at.dx.clamp(0, 1), at.dy.clamp(0, 1)));
  }

  void _zoom(double zoom) {
    final Offset focus = widget.anchors[widget.selectedIndex] ?? _rect.center;
    final double scale = zoom.clamp(1, 8);
    _transform.value = scale == 1
        ? Matrix4.identity()
        : (Matrix4.diagonal3Values(scale, scale, 1)..setTranslationRaw(
            _sceneSize.width * (0.5 - focus.dx * scale),
            _sceneSize.height * (0.5 - focus.dy * scale),
            0,
          ));
    setState(() {});
  }

  Widget _viewport(Widget scene) {
    if (widget.mode == GalCalibrationEditMode.pan) {
      return InteractiveViewer(
        transformationController: _transform,
        maxScale: 8,
        boundaryMargin: const EdgeInsets.all(2000),
        child: scene,
      );
    }
    // InteractiveViewer installs a scale recognizer even when pan/scale are
    // disabled. Editing has one pointer owner and responds to small movements.
    return ClipRect(
      child: Transform(transform: _transform.value, child: scene),
    );
  }

  Widget _dragTarget({
    required Key key,
    required ValueChanged<Offset> onStart,
    required ValueChanged<Offset> onUpdate,
    Widget? child,
  }) => Listener(
    key: key,
    behavior: HitTestBehavior.opaque,
    onPointerDown: (PointerDownEvent event) {
      if (!widget.enabled ||
          _dragPointer != null ||
          event.buttons != kPrimaryButton) {
        return;
      }
      _dragPointer = event.pointer;
      onStart(event.position);
    },
    onPointerMove: (PointerMoveEvent event) {
      if (widget.enabled && event.pointer == _dragPointer) {
        onUpdate(event.position);
      }
    },
    onPointerUp: (PointerUpEvent event) {
      if (event.pointer == _dragPointer) _dragPointer = null;
    },
    onPointerCancel: (PointerCancelEvent event) {
      if (event.pointer == _dragPointer) _dragPointer = null;
    },
    child: child,
  );

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      final double scale = math.min(
        constraints.maxWidth / widget.client.widthPx,
        constraints.maxHeight / widget.client.heightPx,
      );
      _sceneSize = Size(
        widget.client.widthPx * scale,
        widget.client.heightPx * scale,
      );
      final Rect body = Rect.fromLTWH(
        widget.rect.left * _sceneSize.width,
        widget.rect.top * _sceneSize.height,
        widget.rect.width * _sceneSize.width,
        widget.rect.height * _sceneSize.height,
      );
      final bool editRegion =
          widget.enabled && widget.mode == GalCalibrationEditMode.region;
      final bool editPoints =
          widget.enabled && widget.mode == GalCalibrationEditMode.points;
      return Stack(
        children: <Widget>[
          Positioned.fill(
            child: Center(
              child: _viewport(
                SizedBox.fromSize(
                  key: _sceneKey,
                  size: _sceneSize,
                  child: MouseRegion(
                    onExit: (_) => widget.onHover(null),
                    onHover: (PointerHoverEvent event) {
                      final Offset at = event.localPosition / scale;
                      int? hit;
                      for (final GalCalibrationBox box in widget.boxes) {
                        if (box.rect.contains(at)) {
                          hit = box.charIndex;
                          break;
                        }
                      }
                      widget.onHover(hit);
                    },
                    child: Stack(
                      clipBehavior: Clip.none,
                      fit: StackFit.expand,
                      children: <Widget>[
                        GestureDetector(
                          key: const ValueKey<String>('calibration-image'),
                          onTapUp: !editPoints || widget.selectedIndex == null
                              ? null
                              : (TapUpDetails details) => _moveAnchor(
                                  widget.selectedIndex!,
                                  details.globalPosition,
                                ),
                          child: Image.memory(
                            widget.pngBytes,
                            fit: BoxFit.fill,
                            gaplessPlayback: false,
                          ),
                        ),
                        IgnorePointer(
                          child: CustomPaint(
                            painter: _CalibrationPainter(
                              boxes: widget.boxes,
                              client: widget.client,
                              region: body,
                              anchors: widget.anchors,
                              selectedIndex: widget.selectedIndex,
                              opacity: widget.opacity,
                            ),
                          ),
                        ),
                        if (editRegion)
                          Positioned.fromRect(
                            rect: body,
                            child: MouseRegion(
                              cursor: SystemMouseCursors.move,
                              child: _dragTarget(
                                key: const ValueKey<String>(
                                  'calibration-region-move',
                                ),
                                onStart: _beginRect,
                                onUpdate: (Offset global) =>
                                    _dragRegion(global, null),
                              ),
                            ),
                          ),
                        if (editRegion)
                          for (final (String, Alignment) handle
                              in const <(String, Alignment)>[
                                ('top-left', Alignment.topLeft),
                                ('top', Alignment.topCenter),
                                ('top-right', Alignment.topRight),
                                ('right', Alignment.centerRight),
                                ('bottom-right', Alignment.bottomRight),
                                ('bottom', Alignment.bottomCenter),
                                ('bottom-left', Alignment.bottomLeft),
                                ('left', Alignment.centerLeft),
                              ])
                            Positioned(
                              left:
                                  body.left +
                                  body.width * (handle.$2.x + 1) / 2 -
                                  10,
                              top:
                                  body.top +
                                  body.height * (handle.$2.y + 1) / 2 -
                                  10,
                              width: 20,
                              height: 20,
                              child: MouseRegion(
                                cursor: handle.$2.x == 0
                                    ? SystemMouseCursors.resizeUpDown
                                    : handle.$2.y == 0
                                    ? SystemMouseCursors.resizeLeftRight
                                    : handle.$2.x == handle.$2.y
                                    ? SystemMouseCursors.resizeUpLeftDownRight
                                    : SystemMouseCursors.resizeUpRightDownLeft,
                                child: _dragTarget(
                                  key: ValueKey<String>(
                                    'calibration-region-${handle.$1}',
                                  ),
                                  onStart: _beginRect,
                                  onUpdate: (Offset global) =>
                                      _dragRegion(global, handle.$2),
                                  child: Center(
                                    child: Container(
                                      width: 9,
                                      height: 9,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        if (editPoints)
                          for (final MapEntry<int, Offset> anchor
                              in widget.anchors.entries)
                            Positioned(
                              left: anchor.value.dx * _sceneSize.width - 12,
                              top: anchor.value.dy * _sceneSize.height - 12,
                              width: 24,
                              height: 24,
                              child: MouseRegion(
                                cursor: SystemMouseCursors.move,
                                child: _dragTarget(
                                  key: ValueKey<String>(
                                    'calibration-anchor-${anchor.key}',
                                  ),
                                  onStart: (Offset global) {
                                    _anchorStart = _normalized(global);
                                    _anchorOriginal = anchor.value;
                                    widget.onIndexSelected(anchor.key);
                                  },
                                  onUpdate: (Offset global) {
                                    final Offset at =
                                        _anchorOriginal! +
                                        _normalized(global) -
                                        _anchorStart!;
                                    widget.onAnchorChanged(
                                      anchor.key,
                                      Offset(
                                        at.dx.clamp(0, 1),
                                        at.dy.clamp(0, 1),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Material(
              color: Theme.of(context).colorScheme.surface,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    tooltip: t.game_lookup_samples_zoom_out,
                    icon: const Icon(Icons.zoom_out),
                    onPressed: () =>
                        _zoom(_transform.value.getMaxScaleOnAxis() / 1.5),
                  ),
                  IconButton(
                    tooltip: t.game_lookup_samples_zoom_in,
                    icon: const Icon(Icons.zoom_in),
                    onPressed: () =>
                        _zoom(_transform.value.getMaxScaleOnAxis() * 1.5),
                  ),
                  IconButton(
                    tooltip: t.game_lookup_samples_zoom_reset,
                    icon: const Icon(Icons.fit_screen),
                    onPressed: () => _zoom(1),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    },
  );
}

class _CalibrationPainter extends CustomPainter {
  const _CalibrationPainter({
    required this.boxes,
    required this.client,
    required this.region,
    required this.anchors,
    required this.selectedIndex,
    required this.opacity,
  });
  final List<GalCalibrationBox> boxes;
  final GalLookupReferenceClientV1 client;
  final Rect region;
  final Map<int, Offset> anchors;
  final int? selectedIndex;
  final double opacity;

  @override
  void paint(Canvas canvas, Size size) {
    final double sx = size.width / client.widthPx;
    final double sy = size.height / client.heightPx;
    for (final GalCalibrationBox box in boxes) {
      final bool active = box.charIndex == selectedIndex;
      final Rect rect = Rect.fromLTRB(
        box.rect.left * sx,
        box.rect.top * sy,
        box.rect.right * sx,
        box.rect.bottom * sy,
      );
      canvas.drawRect(
        rect,
        Paint()
          ..color = (active ? Colors.amber : Colors.cyan).withValues(
            alpha: opacity,
          )
          ..style = PaintingStyle.stroke
          ..strokeWidth = active ? 2 : 1,
      );
      if (active) {
        canvas.drawRect(
          rect,
          Paint()..color = Colors.amber.withValues(alpha: 0.15),
        );
      }
    }
    canvas.drawRect(
      region,
      Paint()
        ..color = Colors.orange
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2,
    );
    for (final MapEntry<int, Offset> point in anchors.entries) {
      final Offset at = Offset(
        point.value.dx * size.width,
        point.value.dy * size.height,
      );
      final Paint paint = Paint()
        ..color = Colors.deepOrangeAccent
        ..strokeWidth = 2;
      canvas.drawLine(at - const Offset(5, 0), at + const Offset(5, 0), paint);
      canvas.drawLine(at - const Offset(0, 5), at + const Offset(0, 5), paint);
      if (point.key == selectedIndex) {
        canvas.drawCircle(at, 8, paint..style = PaintingStyle.stroke);
      }
    }
  }

  @override
  bool shouldRepaint(covariant _CalibrationPainter old) =>
      old.boxes != boxes ||
      old.client != client ||
      old.region != region ||
      old.anchors != anchors ||
      old.selectedIndex != selectedIndex ||
      old.opacity != opacity;
}
