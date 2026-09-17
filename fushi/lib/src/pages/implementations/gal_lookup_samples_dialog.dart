import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fushi/i18n/strings.g.dart';
import 'package:fushi/src/lookup/gal_lookup_calibration_capture.dart';
import 'package:fushi/src/lookup/gal_lookup_calibration_draft.dart';
import 'package:fushi/src/lookup/gal_lookup_calibration_preview.dart';
import 'package:fushi/src/lookup/gal_lookup_surface_profile.dart';

/// Screenshot notebook. It does not claim a geometry provider or arm game input.
/// Applying a draft returns it to the existing live calibration/commit flow.
class GalLookupSamplesDialog extends StatefulWidget {
  const GalLookupSamplesDialog({
    required this.exeSha256,
    required this.initialRect,
    required this.initialLayout,
    required this.capture,
    this.store = const GalLookupCalibrationStore(),
    this.previewBuilder = GalLookupCalibrationPreviewChannel.build,
    super.key,
  });

  final String exeSha256;
  final GalLookupNormalizedRectV1 initialRect;
  final GalLookupTextLayoutV1 initialLayout;
  final Future<GalLookupCalibrationCapture> Function() capture;
  final GalLookupCalibrationStore store;
  final GalCalibrationPreviewBuilder previewBuilder;

  @override
  State<GalLookupSamplesDialog> createState() => _GalLookupSamplesDialogState();
}

class _GalLookupSamplesDialogState extends State<GalLookupSamplesDialog> {
  late GalLookupNormalizedRectV1 _rect;
  late GalLookupTextLayoutV1 _layout;
  late final TextEditingController _font;
  List<GalCalibrationSample> _samples = [];
  List<GalCalibrationPreview> _previews = [];
  int _selected = 0;
  int? _markIndex;
  int? _hoverIndex;
  bool _busy = true;
  bool _dirty = false;
  bool _previewRunning = false;
  int _previewRevision = 0;
  bool _showBoxes = true;
  double _opacity = 0.55;
  String? _message;
  bool _failed = false;

  GalLookupCalibrationDraft get _draft => GalLookupCalibrationDraft(
    rect: _rect,
    layout: _layout,
    samples: _samples,
  );
  GalCalibrationSample? get _sample =>
      _samples.isEmpty ? null : _samples[_selected];
  GalCalibrationPreview? get _preview =>
      _previews.length == _samples.length && _previews.isNotEmpty
      ? _previews[_selected]
      : null;

  @override
  void initState() {
    super.initState();
    _rect = widget.initialRect;
    _layout = widget.initialLayout;
    _font = TextEditingController(text: _layout.fontFamily);
    unawaited(_load());
  }

  @override
  void dispose() {
    _font.dispose();
    super.dispose();
  }

  Future<void> _load() async {
    try {
      final GalLookupCalibrationDraft? draft = await widget.store.load(
        widget.exeSha256,
      );
      if (!mounted) return;
      if (draft != null) {
        _rect = draft.rect;
        _layout = draft.layout;
        _samples = draft.samples.toList();
        _font.text = _layout.fontFamily;
      }
    } catch (_) {
      _message = t.game_lookup_samples_load_failed;
      _failed = true;
    }
    if (!mounted) return;
    setState(() => _busy = false);
    unawaited(_refresh());
  }

  Future<void> _refresh() async {
    ++_previewRevision;
    _previews = [];
    if (_previewRunning || !mounted) return;
    _previewRunning = true;
    try {
      while (mounted) {
        final int revision = _previewRevision;
        final GalLookupCalibrationDraft draft = _draft;
        final List<GalCalibrationPreview> previews;
        try {
          previews = await Future.wait(
            draft.samples.map(
              (GalCalibrationSample sample) => widget.previewBuilder(
                text: sample.capture.sourceText,
                client: sample.capture.referenceClient,
                rect: draft.rect,
                layout: draft.layout,
              ),
            ),
          );
        } catch (_) {
          if (mounted && revision != _previewRevision) continue;
          rethrow;
        }
        if (!mounted) return;
        if (revision != _previewRevision) continue;
        setState(() => _previews = previews);
        break;
      }
    } catch (_) {
      if (mounted) {
        setState(() {
          _message = t.game_lookup_samples_unavailable;
          _failed = true;
        });
      }
    } finally {
      _previewRunning = false;
      if (mounted) setState(() {});
    }
  }

  void _changed() {
    _dirty = true;
    _markIndex = null;
    _hoverIndex = null;
    _message = null;
    _failed = false;
    setState(() {});
    unawaited(_refresh());
  }

  Future<void> _capture() async {
    if (_busy) return;
    if (_samples.length >= GalLookupCalibrationDraft.maxSamples) {
      setState(() => _message = t.game_lookup_samples_limit);
      return;
    }
    setState(() {
      _busy = true;
      _message = null;
      _failed = false;
    });
    try {
      final GalLookupCalibrationCapture capture = await widget.capture();
      if (!mounted) return;
      if (capture.exeSha256 != widget.exeSha256) {
        throw StateError('game_changed');
      }
      final List<GalCalibrationSample> samples = [
        ..._samples,
        GalCalibrationSample(capture: capture),
      ];
      final GalLookupCalibrationDraft next = GalLookupCalibrationDraft(
        rect: _rect,
        layout: _layout,
        samples: samples,
      );
      if (!next.validFor(widget.exeSha256)) throw StateError('sample_limit');
      _samples = samples;
      _selected = _samples.length - 1;
      _changed();
      // New captures are persisted immediately so returning to the game never
      // risks losing the user's collected samples when the window is closed.
      await widget.store.save(widget.exeSha256, _draft);
      _dirty = false;
    } catch (_) {
      if (mounted) {
        setState(() {
          _message = t.game_lookup_samples_capture_failed;
          _failed = true;
        });
      }
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<bool> _save() async {
    try {
      await widget.store.save(widget.exeSha256, _draft);
      if (mounted) {
        setState(() {
          _dirty = false;
          _message = t.game_lookup_samples_saved;
          _failed = false;
        });
      }
      return true;
    } catch (_) {
      if (mounted) {
        setState(() {
          _message = t.game_lookup_samples_load_failed;
          _failed = true;
        });
      }
      return false;
    }
  }

  Future<void> _finish({bool apply = false}) async {
    if (_busy) return;
    setState(() => _busy = true);
    final bool saved = !_dirty || await _save();
    if (!mounted) return;
    setState(() => _busy = false);
    if (saved) Navigator.of(context).pop(apply ? _draft : null);
  }

  Future<void> _fit() async {
    if (_busy) return;
    setState(() {
      _busy = true;
      _message = null;
    });
    try {
      final GalLookupCalibrationDraft? fitted = await fitGalCalibrationAnchors(
        _draft,
        build: widget.previewBuilder,
      );
      if (!mounted) return;
      if (fitted == null) {
        setState(() {
          _message = t.game_lookup_samples_fit_failed;
          _failed = true;
        });
      } else {
        _rect = fitted.rect;
        _layout = fitted.layout;
        _changed();
      }
    } catch (_) {
      if (mounted) {
        setState(() {
          _message = t.game_lookup_samples_fit_failed;
          _failed = true;
        });
      }
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  double? _errorFor(int sampleIndex) {
    if (_previews.length != _samples.length) return null;
    final GalCalibrationSample sample = _samples[sampleIndex];
    final GalLookupReferenceClientV1 client = sample.capture.referenceClient;
    if (sample.anchors.isEmpty || !_previews[sampleIndex].accepted) return null;
    double total = 0;
    for (final MapEntry<int, Offset> anchor in sample.anchors.entries) {
      final GalCalibrationBox? box = _previews[sampleIndex].boxForIndex(
        anchor.key,
      );
      if (box == null) return null;
      total +=
          (box.rect.center -
                  Offset(
                    anchor.value.dx * client.widthPx,
                    anchor.value.dy * client.heightPx,
                  ))
              .distanceSquared;
    }
    return math.sqrt(total / sample.anchors.length);
  }

  void _setAnchor(Offset point) {
    final int? index = _markIndex;
    final GalCalibrationSample? sample = _sample;
    if (_busy ||
        index == null ||
        sample == null ||
        sample.anchors.length >= 128) {
      return;
    }
    _samples[_selected] = sample.copyWith(
      anchors: {...sample.anchors, index: point},
    );
    _dirty = true;
    setState(() => _markIndex = null);
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: !_busy && !_dirty,
      onPopInvokedWithResult: (bool didPop, Object? result) {
        if (!didPop && !_busy) unawaited(_finish());
      },
      child: Dialog.fullscreen(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(t.game_lookup_samples_title),
            actions: [
              IconButton(
                onPressed: _busy ? null : _capture,
                icon: const Icon(Icons.add_photo_alternate_outlined),
                tooltip: t.game_lookup_samples_capture,
              ),
              IconButton(
                onPressed: _busy
                    ? null
                    : () async {
                        setState(() => _busy = true);
                        await _save();
                        if (mounted) setState(() => _busy = false);
                      },
                icon: const Icon(Icons.save_outlined),
                tooltip: t.game_lookup_samples_save,
              ),
              TextButton(
                onPressed:
                    _busy ||
                        _samples.isEmpty ||
                        _previewRunning ||
                        _previews.length != _samples.length ||
                        _previews.any((GalCalibrationPreview p) => !p.accepted)
                    ? null
                    : () => _finish(apply: true),
                child: Text(t.game_lookup_samples_apply),
              ),
              CloseButton(onPressed: _busy ? null : () => _finish()),
            ],
          ),
          body: Column(
            children: [
              if (_busy || _previewRunning) const LinearProgressIndicator(),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  _message ?? t.game_lookup_samples_hint,
                  style: _failed
                      ? TextStyle(color: Theme.of(context).colorScheme.error)
                      : null,
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: LayoutBuilder(
                        builder:
                            (
                              BuildContext context,
                              BoxConstraints constraints,
                            ) => Column(
                              children: [
                                ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxHeight: constraints.maxHeight * 0.2,
                                  ),
                                  child: SingleChildScrollView(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                      ),
                                      child: Wrap(
                                        spacing: 6,
                                        runSpacing: 6,
                                        children: [
                                          for (
                                            int i = 0;
                                            i < _samples.length;
                                            i++
                                          )
                                            ChoiceChip(
                                              label: Text(
                                                '${i + 1} · ${_samples[i].validation ? t.game_lookup_samples_validation : t.game_lookup_samples_reference}'
                                                '${_errorFor(i) == null ? '' : ' · ${_errorFor(i)!.toStringAsFixed(1)} px'}',
                                              ),
                                              selected: i == _selected,
                                              onSelected: _busy
                                                  ? null
                                                  : (_) => setState(() {
                                                      _selected = i;
                                                      _markIndex = null;
                                                      _hoverIndex = null;
                                                    }),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: _image(),
                                  ),
                                ),
                                if (_sample != null)
                                  SizedBox(
                                    height: math.min(
                                      270,
                                      constraints.maxHeight * 0.45,
                                    ),
                                    child: SingleChildScrollView(
                                      child: _sampleControls(),
                                    ),
                                  ),
                              ],
                            ),
                      ),
                    ),
                    const VerticalDivider(width: 1),
                    SizedBox(
                      width: 310,
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.all(12),
                        child: _controls(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _image() {
    final GalCalibrationSample? sample = _sample;
    if (sample == null) return Center(child: Text(t.game_lookup_samples_empty));
    final GalLookupReferenceClientV1 client = sample.capture.referenceClient;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double scale = math.min(
          constraints.maxWidth / client.widthPx,
          constraints.maxHeight / client.heightPx,
        );
        final Size size = Size(client.widthPx * scale, client.heightPx * scale);
        return Center(
          child: InteractiveViewer(
            maxScale: 8,
            child: MouseRegion(
              onExit: (_) => setState(() => _hoverIndex = null),
              onHover: (PointerHoverEvent event) {
                final Offset at = event.localPosition / scale;
                GalCalibrationBox? hit;
                for (final GalCalibrationBox box
                    in _preview?.boxes ?? <GalCalibrationBox>[]) {
                  if (box.rect.contains(at)) {
                    hit = box;
                    break;
                  }
                }
                if (_hoverIndex != hit?.charIndex) {
                  setState(() => _hoverIndex = hit?.charIndex);
                }
              },
              child: GestureDetector(
                onTapUp: (TapUpDetails details) => _setAnchor(
                  Offset(
                    (details.localPosition.dx / size.width).clamp(0, 1),
                    (details.localPosition.dy / size.height).clamp(0, 1),
                  ),
                ),
                child: SizedBox.fromSize(
                  size: size,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.memory(
                        sample.capture.pngBytes,
                        fit: BoxFit.fill,
                        gaplessPlayback: false,
                      ),
                      CustomPaint(
                        painter: _CalibrationPainter(
                          boxes: _showBoxes ? _preview?.boxes ?? [] : [],
                          client: client,
                          anchors: sample.anchors,
                          selectedIndex: _markIndex,
                          hoverIndex: _hoverIndex,
                          opacity: _opacity,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _sampleControls() {
    final GalCalibrationSample sample = _sample!;
    final GalCalibrationBox? hovered = _hoverIndex == null
        ? null
        : _preview?.boxForIndex(_hoverIndex!);
    final Map<int, String> clusters = {};
    for (final GalCalibrationBox box
        in _preview?.boxes ?? <GalCalibrationBox>[]) {
      clusters[box.charIndex] = sample.capture.sourceText.substring(
        box.charIndex,
        box.charIndex + box.charLength,
      );
    }
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            hovered == null
                ? t.game_lookup_samples_hover
                : '「${sample.capture.sourceText.substring(hovered.charIndex, hovered.charIndex + hovered.charLength)}」 · ${hovered.charIndex + 1}',
          ),
          Text(t.game_lookup_samples_anchor_hint),
          SizedBox(
            height: 96,
            child: SingleChildScrollView(
              child: Wrap(
                spacing: 2,
                runSpacing: 2,
                children: [
                  for (final MapEntry<int, String> cluster in clusters.entries)
                    ChoiceChip(
                      label: Text(cluster.value),
                      selected: _markIndex == cluster.key,
                      avatar: sample.anchors.containsKey(cluster.key)
                          ? const Icon(Icons.check, size: 14)
                          : null,
                      onSelected: _busy
                          ? null
                          : (bool selected) => setState(
                              () => _markIndex = selected ? cluster.key : null,
                            ),
                    ),
                ],
              ),
            ),
          ),
          Wrap(
            spacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              FilterChip(
                label: Text(t.game_lookup_samples_validation),
                selected: sample.validation,
                onSelected: _busy
                    ? null
                    : (bool value) => setState(() {
                        _samples[_selected] = sample.copyWith(
                          validation: value,
                        );
                        _dirty = true;
                      }),
              ),
              TextButton(
                onPressed: _busy
                    ? null
                    : () => setState(() {
                        _samples[_selected] = sample.copyWith(anchors: {});
                        _dirty = true;
                      }),
                child: Text(t.game_lookup_samples_clear_anchors),
              ),
              TextButton(
                onPressed: _busy
                    ? null
                    : () {
                        _samples.removeAt(_selected);
                        _selected = math.max(0, _selected - 1);
                        _changed();
                      },
                child: Text(t.game_lookup_samples_remove),
              ),
              Text(
                '${sample.capture.referenceClient.widthPx} × ${sample.capture.referenceClient.heightPx}',
              ),
            ],
          ),
          if (_preview != null && !_preview!.accepted)
            Text(
              t.game_lookup_samples_unavailable,
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
        ],
      ),
    );
  }

  Widget _controls() => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Text(t.game_lookup_samples_native_hint),
      const SizedBox(height: 12),
      SwitchListTile.adaptive(
        contentPadding: EdgeInsets.zero,
        title: Text(t.game_lookup_samples_boxes),
        value: _showBoxes,
        onChanged: (bool value) => setState(() => _showBoxes = value),
      ),
      _slider(
        t.game_lookup_samples_opacity,
        _opacity,
        0.1,
        1,
        (double v) => setState(() => _opacity = v),
      ),
      const Divider(),
      _slider(
        t.game_lookup_attached_left,
        _rect.left,
        0,
        1 - _rect.width,
        (double v) => _setRect(left: v),
      ),
      _slider(
        t.game_lookup_attached_top,
        _rect.top,
        0,
        1 - _rect.height,
        (double v) => _setRect(top: v),
      ),
      _slider(
        t.game_lookup_attached_width,
        _rect.width,
        0.02,
        1 - _rect.left,
        (double v) => _setRect(width: v),
      ),
      _slider(
        t.game_lookup_attached_height,
        _rect.height,
        0.02,
        1 - _rect.top,
        (double v) => _setRect(height: v),
      ),
      TextField(
        controller: _font,
        enabled: !_busy,
        decoration: InputDecoration(
          labelText: t.game_lookup_attached_font_family,
        ),
        onChanged: (String value) {
          _layout = copyGalCalibrationLayout(_layout, fontFamily: value.trim());
          _changed();
        },
      ),
      _slider(
        t.game_lookup_attached_font_size,
        _layout.fontSizePerClientHeight,
        0.01,
        0.12,
        (double v) {
          _layout = copyGalCalibrationLayout(_layout, fontSize: v);
          _changed();
        },
      ),
      _slider(
        t.game_lookup_attached_letter_spacing,
        _layout.letterSpacingPerClientHeight,
        -0.02,
        0.05,
        (double v) {
          _layout = copyGalCalibrationLayout(_layout, tracking: v);
          _changed();
        },
      ),
      _slider(
        t.game_lookup_attached_line_height,
        _layout.lineHeight,
        0.5,
        2.5,
        (double v) {
          _layout = copyGalCalibrationLayout(_layout, lineHeight: v);
          _changed();
        },
      ),
      FilledButton(
        onPressed: _busy || _samples.isEmpty ? null : _fit,
        child: Text(t.game_lookup_samples_fit),
      ),
      const SizedBox(height: 12),
      Text(t.game_lookup_samples_validation_hint),
      const SizedBox(height: 12),
      Text(t.game_lookup_samples_saved_hint),
    ],
  );

  void _setRect({double? left, double? top, double? width, double? height}) {
    final GalLookupNormalizedRectV1 rect = GalLookupNormalizedRectV1(
      left: left ?? _rect.left,
      top: top ?? _rect.top,
      width: width ?? _rect.width,
      height: height ?? _rect.height,
    );
    if (!rect.isValid) return;
    _rect = rect;
    _changed();
  }

  Widget _slider(
    String label,
    double value,
    double min,
    double max,
    ValueChanged<double> changed,
  ) {
    final double upper = math.max(min, max);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('$label · ${value.toStringAsFixed(4)}'),
        Slider(
          value: value.clamp(min, upper),
          min: min,
          max: upper,
          onChanged: _busy || max <= min ? null : changed,
        ),
      ],
    );
  }
}

class _CalibrationPainter extends CustomPainter {
  const _CalibrationPainter({
    required this.boxes,
    required this.client,
    required this.anchors,
    required this.selectedIndex,
    required this.hoverIndex,
    required this.opacity,
  });
  final List<GalCalibrationBox> boxes;
  final GalLookupReferenceClientV1 client;
  final Map<int, Offset> anchors;
  final int? selectedIndex;
  final int? hoverIndex;
  final double opacity;

  @override
  void paint(Canvas canvas, Size size) {
    final double sx = size.width / client.widthPx;
    final double sy = size.height / client.heightPx;
    for (final GalCalibrationBox box in boxes) {
      final bool active =
          box.charIndex == selectedIndex || box.charIndex == hoverIndex;
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
    for (final Offset point in anchors.values) {
      final Offset at = Offset(point.dx * size.width, point.dy * size.height);
      final Paint paint = Paint()
        ..color = Colors.deepOrangeAccent
        ..strokeWidth = 2;
      canvas.drawLine(at - const Offset(5, 0), at + const Offset(5, 0), paint);
      canvas.drawLine(at - const Offset(0, 5), at + const Offset(0, 5), paint);
    }
  }

  @override
  bool shouldRepaint(covariant _CalibrationPainter old) =>
      old.boxes != boxes ||
      old.client != client ||
      old.anchors != anchors ||
      old.selectedIndex != selectedIndex ||
      old.hoverIndex != hoverIndex ||
      old.opacity != opacity;
}
