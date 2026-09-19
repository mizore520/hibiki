import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:fushi/i18n/strings.g.dart';
import 'package:fushi/src/lookup/gal_lookup_calibration_capture.dart';
import 'package:fushi/src/lookup/gal_lookup_calibration_draft.dart';
import 'package:fushi/src/lookup/gal_lookup_calibration_image_fit.dart';
import 'package:fushi/src/lookup/gal_lookup_calibration_preview.dart';
import 'package:fushi/src/lookup/gal_lookup_surface_profile.dart';
import 'package:fushi/src/mining/window_capture_channel.dart';
import 'package:fushi/src/pages/implementations/gal_lookup_calibration_canvas.dart';
import 'package:fushi/src/pages/implementations/gal_lookup_calibration_number_field.dart';

bool _sameSourceViewport(WindowCaptureMetadata? a, WindowCaptureMetadata? b) {
  List<double>? normalizedViewport(WindowCaptureMetadata? value) {
    if (value == null || !value.usedPresentationCapture) {
      return <double>[0, 0, 1, 1];
    }
    if (!value.hasSourceClientMapping) return null;
    return <double>[
      (value.sourceViewportLeftPx - value.sourceClientLeftPx) /
          value.sourceClientWidthPx,
      (value.sourceViewportTopPx - value.sourceClientTopPx) /
          value.sourceClientHeightPx,
      value.sourceViewportWidthPx / value.sourceClientWidthPx,
      value.sourceViewportHeightPx / value.sourceClientHeightPx,
    ];
  }

  final List<double>? left = normalizedViewport(a);
  final List<double>? right = normalizedViewport(b);
  if (left == null || right == null) return false;
  for (int i = 0; i < left.length; i++) {
    if ((left[i] - right[i]).abs() > 0.000001) return false;
  }
  return true;
}

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
    this.imageFitter = fitGalCalibrationImages,
    super.key,
  });

  final String exeSha256;
  final GalLookupNormalizedRectV1 initialRect;
  final GalLookupTextLayoutV1 initialLayout;
  final Future<GalLookupCalibrationCapture> Function() capture;
  final GalLookupCalibrationStore store;
  final GalCalibrationPreviewBuilder previewBuilder;
  final Future<GalCalibrationImageFit> Function(
    GalLookupCalibrationDraft draft, {
    GalCalibrationPreviewBuilder build,
  })
  imageFitter;

  @override
  State<GalLookupSamplesDialog> createState() => _GalLookupSamplesDialogState();
}

class _GalLookupSamplesDialogState extends State<GalLookupSamplesDialog> {
  late GalLookupNormalizedRectV1 _rect;
  late GalLookupNormalizedRectV1 _layoutRect;
  late GalLookupTextLayoutV1 _layout;
  GalLookupReferenceClientV1? _layoutReferenceClient;
  WindowCaptureMetadata? _layoutCaptureMetadata;
  late final TextEditingController _font;
  List<GalCalibrationSample> _samples = [];
  List<GalCalibrationPreview> _previews = [];
  int _selected = 0;
  int? _markIndex;
  int? _hoverIndex;
  GalCalibrationEditMode _editMode = GalCalibrationEditMode.region;
  bool _busy = true;
  bool _dirty = false;
  bool _previewRunning = false;
  int _previewRevision = 0;
  bool _showBoxes = true;
  bool _showAdvanced = false;
  bool _fitAllSamples = false;
  bool _manualLayout = false;
  String? _message;
  bool _failed = false;
  GalCalibrationOcrModelInfo? _ocrModel;
  bool _ocrDownloadBusy = false;
  String _ocrDownloadFileName = '';
  int _ocrDownloadReceived = 0;
  int _ocrDownloadTotal = 0;

  bool get _canPreview => _manualLayout || _layout.cellGrid != null;

  GalLookupCalibrationDraft get _draft => GalLookupCalibrationDraft(
    rect: _layoutRect,
    searchRect: _rect,
    layout: _layout,
    samples: _samples,
    layoutReferenceClient: _layoutReferenceClient,
    layoutCaptureMetadata: _layoutCaptureMetadata,
  );
  GalCalibrationSample? get _sample =>
      _samples.isEmpty ? null : _samples[_selected];
  GalCalibrationPreview? get _preview =>
      _previews.length == _samples.length && _previews.isNotEmpty
      ? _previews[_selected]
      : null;
  bool get _applyPreviewsAccepted {
    if (!_fitAllSamples) return _preview?.accepted == true;
    return _previews.length == _samples.length &&
        _previews.isNotEmpty &&
        _previews.every((GalCalibrationPreview preview) => preview.accepted);
  }

  @override
  void initState() {
    super.initState();
    _rect = widget.initialRect;
    _layoutRect = widget.initialRect;
    _layout = widget.initialLayout;
    _font = TextEditingController(text: _layout.fontFamily);
    unawaited(_load());
    unawaited(_refreshOcrModel());
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
        _rect = draft.searchRect;
        _layoutRect = draft.rect;
        _layout = draft.layout;
        _layoutReferenceClient = draft.layoutReferenceClient;
        _layoutCaptureMetadata = draft.layoutCaptureMetadata;
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

  Future<void> _refreshOcrModel() async {
    final GalCalibrationOcrModelStatusReader? reader =
        galCalibrationOcrModelStatus;
    if (reader == null) return;
    try {
      final GalCalibrationOcrModelInfo info = await reader();
      if (!mounted) return;
      setState(() => _ocrModel = info);
    } catch (_) {
      // The screenshot fitter remains available when the local OCR runtime is
      // unavailable; keep this optional status quiet rather than blocking it.
    }
  }

  Future<void> _downloadOcrModel() async {
    if (_busy || _ocrDownloadBusy) return;
    final GalCalibrationOcrModelDownloader? downloader =
        galCalibrationOcrModelDownloader;
    if (downloader == null) return;
    setState(() {
      _ocrDownloadBusy = true;
      _ocrDownloadFileName = '';
      _ocrDownloadReceived = 0;
      _ocrDownloadTotal = 0;
      _message = null;
      _failed = false;
    });
    try {
      await for (final GalCalibrationOcrDownloadProgress event
          in downloader()) {
        if (!mounted) return;
        setState(() {
          _ocrDownloadFileName = event.fileName;
          _ocrDownloadReceived = event.receivedBytes;
          _ocrDownloadTotal = event.totalBytes;
        });
      }
      await _refreshOcrModel();
    } catch (_) {
      if (mounted) {
        setState(() {
          _message = t.manga_ocr_download_failed;
          _failed = true;
        });
      }
    } finally {
      if (mounted) setState(() => _ocrDownloadBusy = false);
    }
  }

  Future<void> _refresh() async {
    ++_previewRevision;
    _previews = [];
    if (_previewRunning || !mounted) return;
    _previewRunning = true;
    try {
      while (mounted) {
        // A legacy draft is only a rough region until automatic measurement.
        // Its font preview says nothing about whether the screenshot fits.
        if (!_canPreview) break;
        final int revision = _previewRevision;
        final GalLookupCalibrationDraft draft = _draft;
        final List<GalCalibrationPreview> previews;
        try {
          previews = await Future.wait(
            draft.samples.map(
              (GalCalibrationSample sample) =>
                  !_sameSourceViewport(
                    _layoutCaptureMetadata,
                    sample.capture.captureMetadata,
                  )
                  ? Future<GalCalibrationPreview>.value(
                      const GalCalibrationPreview(
                        boxes: [],
                        reason: 'source_viewport_changed',
                      ),
                    )
                  : widget.previewBuilder(
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
          _message = _manualLayout
              ? t.game_lookup_samples_unavailable
              : t.game_lookup_samples_auto_preview_failed;
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
        throw const GalLookupCalibrationCaptureException(
          GalLookupCalibrationCaptureFailure.sceneChanged,
        );
      }
      final List<GalCalibrationSample> samples = [
        ..._samples,
        GalCalibrationSample(capture: capture),
      ];
      final GalLookupCalibrationDraft next = GalLookupCalibrationDraft(
        rect: _layoutRect,
        searchRect: _rect,
        layout: _layout,
        samples: samples,
      );
      if (!next.validFor(widget.exeSha256)) throw StateError('sample_limit');
      _samples = samples;
      _selected = _samples.length - 1;
      _markIndex = null;
      _changed();
      // New captures are persisted immediately so returning to the game never
      // risks losing the user's collected samples when the window is closed.
      await _save();
    } catch (error) {
      if (mounted) {
        setState(() {
          _message = _captureFailureMessage(error);
          _failed = true;
        });
      }
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  String _captureFailureMessage(Object error) {
    if (error is! GalLookupCalibrationCaptureException) {
      return t.game_lookup_samples_capture_failed;
    }
    return switch (error.failure) {
      GalLookupCalibrationCaptureFailure.sceneChanged =>
        t.game_lookup_samples_capture_changed,
      GalLookupCalibrationCaptureFailure.sourceNotReady ||
      GalLookupCalibrationCaptureFailure.invalidSource =>
        t.game_lookup_samples_capture_source,
      GalLookupCalibrationCaptureFailure.rubyUnsupported =>
        t.game_lookup_samples_capture_unsupported,
      GalLookupCalibrationCaptureFailure.overlayHideFailed ||
      GalLookupCalibrationCaptureFailure.suppressionUnavailable ||
      GalLookupCalibrationCaptureFailure.restoreFailed =>
        t.game_lookup_samples_capture_overlay,
      GalLookupCalibrationCaptureFailure.windowCaptureFailed =>
        t.game_lookup_samples_capture_unavailable,
      GalLookupCalibrationCaptureFailure.clientMappingUnavailable ||
      GalLookupCalibrationCaptureFailure.imageTooLarge ||
      GalLookupCalibrationCaptureFailure.imageDimensionsInvalid =>
        t.game_lookup_samples_capture_window,
      _ => t.game_lookup_samples_capture_failed,
    };
  }

  Future<bool> _save() async {
    _commitNumberEdit();
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
          _message = t.game_lookup_samples_save_failed;
          _failed = true;
        });
      }
      return false;
    }
  }

  Future<void> _finish({bool apply = false}) async {
    if (_busy || (apply && (!_canPreview || _samples.isEmpty))) return;
    _commitNumberEdit();
    setState(() => _busy = true);
    if (apply) {
      bool valid = false;
      try {
        final List<GalCalibrationSample> samplesToValidate = _fitAllSamples
            ? _samples
            : <GalCalibrationSample>[_samples[_selected]];
        final List<GalCalibrationPreview> previews = await Future.wait(
          samplesToValidate.map(
            (GalCalibrationSample sample) => widget.previewBuilder(
              text: sample.capture.sourceText,
              client: sample.capture.referenceClient,
              rect: _layoutRect,
              layout: _layout,
            ),
          ),
        );
        valid =
            samplesToValidate.every(
              (GalCalibrationSample sample) => _sameSourceViewport(
                _layoutCaptureMetadata,
                sample.capture.captureMetadata,
              ),
            ) &&
            previews.isNotEmpty &&
            previews.every((GalCalibrationPreview p) => p.accepted);
      } catch (_) {
        valid = false;
      }
      if (!mounted) return;
      if (!valid) {
        setState(() {
          _busy = false;
          _message = _manualLayout
              ? t.game_lookup_samples_unavailable
              : t.game_lookup_samples_auto_preview_failed;
          _failed = true;
        });
        return;
      }
    }
    final bool saved = !_dirty || await _save();
    if (!mounted) return;
    setState(() => _busy = false);
    if (saved) Navigator.of(context).pop(apply ? _draft : null);
  }

  Future<void> _fit() async {
    if (_busy) return;
    if (_samples.isEmpty ||
        _samples.any(
          (GalCalibrationSample sample) => !_sameSourceViewport(
            _samples.first.capture.captureMetadata,
            sample.capture.captureMetadata,
          ),
        )) {
      setState(() {
        _message = t.game_lookup_samples_auto_inconsistent;
        _failed = true;
      });
      return;
    }
    _commitNumberEdit();
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
        _layoutRect = fitted.rect;
        _layout = fitted.layout;
        _layoutReferenceClient = _samples.first.capture.referenceClient;
        _layoutCaptureMetadata = _samples.first.capture.captureMetadata;
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

  Future<void> _fitImage() async {
    if (_busy || _samples.isEmpty) return;
    _commitNumberEdit();
    setState(() {
      _busy = true;
      _message = null;
      _failed = false;
    });
    try {
      // The simple path measures the selected complete screenshot. Advanced
      // mode can opt back into the original joint fit across all samples.
      final GalCalibrationSample selected = _samples[_selected];
      final List<GalCalibrationSample> fittingSamples = _fitAllSamples
          ? _samples
          : <GalCalibrationSample>[
              selected.validation
                  ? selected.copyWith(validation: false)
                  : selected,
            ];
      final GalLookupCalibrationDraft input = GalLookupCalibrationDraft(
        rect: _layoutRect,
        searchRect: _rect,
        layout: _layout,
        samples: fittingSamples,
      );
      // Cropped screenshots have different normalized origins. Joint fitting
      // is meaningful only when every image has the same source viewport.
      final WindowCaptureMetadata? fittingMetadata =
          fittingSamples.first.capture.captureMetadata;
      if (_fitAllSamples &&
          fittingSamples.any(
            (GalCalibrationSample sample) => !_sameSourceViewport(
              fittingMetadata,
              sample.capture.captureMetadata,
            ),
          )) {
        setState(() {
          _message = t.game_lookup_samples_auto_inconsistent;
          _failed = true;
        });
        return;
      }
      final GalCalibrationImageFit result = await widget.imageFitter(
        input,
        build: widget.previewBuilder,
      );
      if (!mounted) return;
      if (result.draft == null) {
        setState(() {
          _failed = true;
          final int? failedSampleIndex = result.sampleIndex == null
              ? null
              : _fitAllSamples
              ? result.sampleIndex
              : _selected;
          if (failedSampleIndex != null &&
              failedSampleIndex >= 0 &&
              failedSampleIndex < _samples.length) {
            _selected = failedSampleIndex;
            _markIndex = null;
            _hoverIndex = null;
          }
          final String reason = switch (result.reason) {
            'multiline_required' => t.game_lookup_samples_auto_multiline,
            'unsupported_text' => t.game_lookup_samples_auto_unsupported,
            'text_rows_not_found' ||
            'ocr_lines_not_found' => t.game_lookup_samples_auto_rows_missing,
            'inconsistent_samples' ||
            'ocr_geometry_inconsistent' ||
            'ocr_indent_ambiguous' ||
            'ocr_text_alignment_failed' ||
            'ocr_text_alignment_weak' ||
            'ocr_ink_geometry_weak' ||
            'ocr_confidence_low' => t.game_lookup_samples_auto_inconsistent,
            'preview_rejected' => t.game_lookup_samples_auto_preview_failed,
            _ => t.game_lookup_samples_auto_failed,
          };
          _message = failedSampleIndex == null
              ? reason
              : t.game_lookup_samples_auto_sample_failed(
                  sample: '${failedSampleIndex + 1}',
                  reason: reason,
                );
        });
      } else {
        _layoutRect = result.draft!.rect;
        _layout = result.draft!.layout;
        _layoutReferenceClient = fittingSamples.first.capture.referenceClient;
        _layoutCaptureMetadata = fittingMetadata;
        _font.text = _layout.fontFamily;
        _manualLayout = false;
        _markIndex = null;
        _editMode = GalCalibrationEditMode.pan;
        _changed();
        setState(() => _message = t.game_lookup_samples_auto_success);
      }
    } catch (_) {
      if (mounted) {
        setState(() {
          _message = t.game_lookup_samples_auto_failed;
          _failed = true;
        });
      }
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  void _commitNumberEdit() {
    FocusManager.instance.primaryFocus?.unfocus();
    FocusManager.instance.applyFocusChangesIfNeeded();
  }

  double? _errorFor(int sampleIndex) {
    if (!_manualLayout) return null;
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

  void _setAnchor(int index, Offset point) {
    final GalCalibrationSample? sample = _sample;
    if (_busy ||
        sample == null ||
        (sample.anchors.length >= 128 && !sample.anchors.containsKey(index))) {
      return;
    }
    _samples[_selected] = sample.copyWith(
      anchors: {...sample.anchors, index: point},
    );
    _dirty = true;
    setState(() => _markIndex = index);
  }

  void _nudgeAnchor(double dx, double dy) {
    final int? index = _markIndex;
    final GalCalibrationSample? sample = _sample;
    final Offset? point = sample?.anchors[index];
    if (index == null || point == null || sample == null) return;
    _setAnchor(
      index,
      Offset(
        (point.dx + dx / sample.capture.referenceClient.widthPx).clamp(0, 1),
        (point.dy + dy / sample.capture.referenceClient.heightPx).clamp(0, 1),
      ),
    );
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
                        !_canPreview ||
                        _samples.isEmpty ||
                        _previewRunning ||
                        !_applyPreviewsAccepted
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
                  _message ??
                      (_canPreview
                          ? t.game_lookup_samples_auto_hint
                          : t.game_lookup_samples_auto_pending),
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
                                if (_showAdvanced)
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
                                                tooltip: t
                                                    .game_lookup_samples_residual_hint,
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
                                  )
                                else if (_samples.length > 1)
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      12,
                                      8,
                                      12,
                                      0,
                                    ),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        t.game_lookup_samples_current(
                                          sample: '${_selected + 1}',
                                          total: '${_samples.length}',
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
                                      _manualLayout ? 270 : 160,
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
    return GalLookupCalibrationCanvas(
      key: ValueKey<Object>(sample.capture),
      pngBytes: sample.capture.pngBytes,
      client: sample.capture.referenceClient,
      rect: _rect,
      boxes: _showBoxes ? _preview?.boxes ?? [] : [],
      anchors: _manualLayout ? sample.anchors : const {},
      selectedIndex: _markIndex,
      mode: _editMode,
      opacity: 0.55,
      enabled: !_busy,
      onRectChanged: (GalLookupNormalizedRectV1 rect) {
        _setSearchRect(rect);
      },
      onAnchorChanged: _setAnchor,
      onIndexSelected: (int index) => setState(() => _markIndex = index),
      onHover: (int? index) {
        if (_hoverIndex != index) setState(() => _hoverIndex = index);
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
          if (_canPreview)
            Text(
              hovered == null
                  ? t.game_lookup_samples_hover
                  : '「${sample.capture.sourceText.substring(hovered.charIndex, hovered.charIndex + hovered.charLength)}」 · ${hovered.charIndex + 1}',
            ),
          Wrap(
            spacing: 6,
            children: <Widget>[
              for (final (GalCalibrationEditMode, String) mode
                  in <(GalCalibrationEditMode, String)>[
                    (
                      GalCalibrationEditMode.region,
                      t.game_lookup_samples_region_mode,
                    ),
                    (
                      GalCalibrationEditMode.points,
                      t.game_lookup_samples_point_mode,
                    ),
                    (
                      GalCalibrationEditMode.pan,
                      t.game_lookup_samples_pan_mode,
                    ),
                  ].where(
                    (mode) =>
                        _manualLayout ||
                        mode.$1 != GalCalibrationEditMode.points,
                  ))
                ChoiceChip(
                  key: ValueKey<String>('calibration-mode-${mode.$1.name}'),
                  label: Text(mode.$2),
                  selected: _editMode == mode.$1,
                  onSelected: _busy
                      ? null
                      : (_) => setState(() => _editMode = mode.$1),
                ),
            ],
          ),
          if (_layout.cellGrid == null)
            Text(
              !_manualLayout || _editMode == GalCalibrationEditMode.region
                  ? t.game_lookup_samples_search_hint
                  : t.game_lookup_samples_points_hint,
            ),
          if (_manualLayout)
            SizedBox(
              height: 96,
              child: SingleChildScrollView(
                child: Wrap(
                  spacing: 2,
                  runSpacing: 2,
                  children: [
                    for (final MapEntry<int, String> cluster
                        in clusters.entries)
                      ChoiceChip(
                        label: Text(cluster.value),
                        selected: _markIndex == cluster.key,
                        avatar: sample.anchors.containsKey(cluster.key)
                            ? const Icon(Icons.check, size: 14)
                            : null,
                        onSelected: _busy
                            ? null
                            : (bool selected) => setState(() {
                                _markIndex = selected ? cluster.key : null;
                                _editMode = GalCalibrationEditMode.points;
                              }),
                      ),
                  ],
                ),
              ),
            ),
          if (_manualLayout &&
              _markIndex != null &&
              sample.anchors.containsKey(_markIndex))
            Wrap(
              spacing: 4,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: <Widget>[
                Text(
                  '${t.game_lookup_samples_point_selected}: ${clusters[_markIndex] ?? ''}',
                ),
                IconButton(
                  key: const ValueKey<String>('anchor-nudge-left'),
                  tooltip: t.game_lookup_samples_nudge_left,
                  icon: const Icon(Icons.arrow_back),
                  onPressed: _busy ? null : () => _nudgeAnchor(-1, 0),
                ),
                IconButton(
                  key: const ValueKey<String>('anchor-nudge-right'),
                  tooltip: t.game_lookup_samples_nudge_right,
                  icon: const Icon(Icons.arrow_forward),
                  onPressed: _busy ? null : () => _nudgeAnchor(1, 0),
                ),
                IconButton(
                  key: const ValueKey<String>('anchor-nudge-up'),
                  tooltip: t.game_lookup_samples_nudge_up,
                  icon: const Icon(Icons.arrow_upward),
                  onPressed: _busy ? null : () => _nudgeAnchor(0, -1),
                ),
                IconButton(
                  key: const ValueKey<String>('anchor-nudge-down'),
                  tooltip: t.game_lookup_samples_nudge_down,
                  icon: const Icon(Icons.arrow_downward),
                  onPressed: _busy ? null : () => _nudgeAnchor(0, 1),
                ),
                IconButton(
                  tooltip: t.game_lookup_samples_point_remove,
                  icon: const Icon(Icons.delete_outline),
                  onPressed: _busy
                      ? null
                      : () => setState(() {
                          final Map<int, Offset> anchors = Map<int, Offset>.of(
                            sample.anchors,
                          )..remove(_markIndex);
                          _samples[_selected] = sample.copyWith(
                            anchors: anchors,
                          );
                          _dirty = true;
                        }),
                ),
              ],
            ),
          if (_showAdvanced)
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
                if (_manualLayout)
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
                          _markIndex = null;
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
              _manualLayout
                  ? t.game_lookup_samples_unavailable
                  : t.game_lookup_samples_auto_sample_failed(
                      sample: '${_selected + 1}',
                      reason: t.game_lookup_samples_auto_preview_failed,
                    ),
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
        ],
      ),
    );
  }

  Widget _controls() {
    final GalLookupReferenceClientV1? client = _sample?.capture.referenceClient;
    final double width = client?.widthPx.toDouble() ?? 1;
    final double height = client?.heightPx.toDouble() ?? 1;
    final int trainingPoints = _samples
        .where((GalCalibrationSample s) => !s.validation)
        .fold<int>(
          0,
          (int total, GalCalibrationSample s) => total + s.anchors.length,
        );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          _fitAllSamples
              ? t.game_lookup_samples_auto_all_hint
              : t.game_lookup_samples_auto_current_hint,
        ),
        const SizedBox(height: 8),
        if (galCalibrationOcrModelStatus != null) ...[
          if (_ocrModel?.ready == true)
            Text(t.manga_ocr_model_status_ready)
          else ...[
            Text(
              '${t.manga_ocr_model_status_missing} · '
              '${t.manga_ocr_model_download_size(size: '31 MB')}。'
              '${t.manga_ocr_engine_local_onnx_desc}',
            ),
            const SizedBox(height: 6),
            OutlinedButton.icon(
              key: const ValueKey<String>('calibration-ocr-download'),
              onPressed: _busy || _ocrDownloadBusy ? null : _downloadOcrModel,
              icon: const Icon(Icons.download),
              label: Text(
                _ocrDownloadBusy
                    ? t.manga_ocr_downloading_file(file: _ocrDownloadFileName)
                    : t.manga_ocr_download,
              ),
            ),
            if (_ocrDownloadBusy && _ocrDownloadTotal > 0)
              LinearProgressIndicator(
                value: (_ocrDownloadReceived / _ocrDownloadTotal).clamp(
                  0.0,
                  1.0,
                ),
              ),
          ],
          const SizedBox(height: 8),
        ],
        FilledButton.icon(
          key: const ValueKey<String>('calibration-auto-align'),
          onPressed: _busy || _ocrDownloadBusy || _samples.isEmpty
              ? null
              : _fitImage,
          icon: const Icon(Icons.auto_fix_high),
          label: Text(
            _fitAllSamples
                ? t.game_lookup_samples_auto_align_all
                : t.game_lookup_samples_auto_align_current,
          ),
        ),
        const Divider(),
        Text(
          t.game_lookup_samples_search_title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Text(t.game_lookup_samples_search_hint),
        const SizedBox(height: 8),
        ExpansionTile(
          key: const ValueKey<String>('calibration-advanced'),
          initiallyExpanded: _showAdvanced,
          tilePadding: EdgeInsets.zero,
          title: Text(t.game_lookup_samples_advanced),
          subtitle: Text(t.game_lookup_samples_advanced_hint),
          onExpansionChanged: (bool value) =>
              setState(() => _showAdvanced = value),
          children: [
            if (_samples.length > 1)
              SwitchListTile.adaptive(
                key: const ValueKey<String>('calibration-fit-all'),
                contentPadding: EdgeInsets.zero,
                title: Text(t.game_lookup_samples_fit_all),
                subtitle: Text(t.game_lookup_samples_fit_all_hint),
                value: _fitAllSamples,
                onChanged: _busy
                    ? null
                    : (bool value) => setState(() => _fitAllSamples = value),
              ),
            if (_layout.cellGrid != null) ...[
              Text(
                t.game_lookup_samples_auto_grid,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(height: 8),
            ],
            Text(t.game_lookup_samples_pixel_advanced_hint),
            const SizedBox(height: 8),
            _number(
              'left',
              t.game_lookup_attached_left,
              _rect.left * width,
              0,
              (1 - _rect.width) * width,
              (double v) => _setRect(left: v / width),
            ),
            _number(
              'top',
              t.game_lookup_attached_top,
              _rect.top * height,
              0,
              (1 - _rect.height) * height,
              (double v) => _setRect(top: v / height),
            ),
            _number(
              'width',
              t.game_lookup_attached_width,
              _rect.width * width,
              math.max(0.001 * width, 8),
              (1 - _rect.left) * width,
              (double v) => _setRect(width: v / width),
            ),
            _number(
              'height',
              t.game_lookup_attached_height,
              _rect.height * height,
              math.max(0.001 * height, 8),
              (1 - _rect.top) * height,
              (double v) => _setRect(height: v / height),
            ),
            const Divider(),
            if (!_manualLayout)
              TextButton(
                key: const ValueKey<String>('calibration-manual-layout'),
                onPressed: _busy
                    ? null
                    : () {
                        if (_layout.cellGrid != null) {
                          _layout = const GalLookupTextLayoutV1();
                        }
                        _manualLayout = true;
                        _layoutReferenceClient =
                            _sample?.capture.referenceClient;
                        _layoutCaptureMetadata =
                            _sample?.capture.captureMetadata;
                        _font.text = _layout.fontFamily;
                        _changed();
                      },
                child: Text(t.game_lookup_samples_manual_layout),
              ),
            if (_manualLayout) ...[
              Text(
                t.game_lookup_samples_layout_title,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(t.game_lookup_samples_font_hint),
              TextField(
                key: const ValueKey<String>('calibration-font'),
                controller: _font,
                enabled: !_busy,
                decoration: InputDecoration(
                  labelText: t.game_lookup_attached_font_family,
                ),
                onChanged: (String value) {
                  _layout = copyGalCalibrationLayout(
                    _layout,
                    fontFamily: value.trim(),
                  );
                  _changed();
                },
              ),
              const SizedBox(height: 8),
              _number(
                'font-size',
                t.game_lookup_attached_font_size,
                _layout.fontSizePerClientHeight * height,
                1,
                height * 0.25,
                (double v) {
                  _layout = copyGalCalibrationLayout(
                    _layout,
                    fontSize: v / height,
                  );
                  _changed();
                },
              ),
              _number(
                'tracking',
                t.game_lookup_attached_letter_spacing,
                _layout.letterSpacingPerClientHeight * height,
                -0.05 * height,
                0.1 * height,
                (double v) {
                  _layout = copyGalCalibrationLayout(
                    _layout,
                    tracking: v / height,
                  );
                  _changed();
                },
                step: 0.25,
              ),
              _number(
                'line-height',
                t.game_lookup_attached_line_height,
                _layout.lineHeight,
                0.5,
                3,
                (double v) {
                  _layout = copyGalCalibrationLayout(_layout, lineHeight: v);
                  _changed();
                },
                step: 0.05,
                unit: '',
              ),
              if (trainingPoints < 6) Text(t.game_lookup_samples_few_points),
              FilledButton(
                onPressed: _busy || _samples.isEmpty ? null : _fit,
                child: Text(t.game_lookup_samples_fit),
              ),
              const SizedBox(height: 12),
              Text(t.game_lookup_samples_validation_hint),
            ],
            const Divider(),
            SwitchListTile.adaptive(
              contentPadding: EdgeInsets.zero,
              title: Text(t.game_lookup_samples_boxes),
              value: _showBoxes,
              onChanged: (bool value) => setState(() => _showBoxes = value),
            ),
          ],
        ),
        Text(t.game_lookup_samples_saved_hint),
      ],
    );
  }

  Widget _number(
    String key,
    String label,
    double value,
    double min,
    double max,
    ValueChanged<double> changed, {
    double step = 1,
    String unit = 'px',
  }) => Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: GalCalibrationNumberField(
      key: ValueKey<String>('calibration-number-$key'),
      label: unit.isEmpty ? label : '$label · $unit',
      value: value,
      min: math.min(min, max),
      max: max,
      step: step,
      enabled: !_busy && _sample != null,
      onChanged: changed,
    ),
  );

  void _setRect({double? left, double? top, double? width, double? height}) {
    final GalLookupNormalizedRectV1 rect = GalLookupNormalizedRectV1(
      left: left ?? _rect.left,
      top: top ?? _rect.top,
      width: width ?? _rect.width,
      height: height ?? _rect.height,
    );
    if (!rect.isValid) return;
    _setSearchRect(rect);
  }

  void _setSearchRect(GalLookupNormalizedRectV1 rect) {
    _rect = rect;
    _layoutRect = rect;
    // A new crop needs a new fit; never apply stale geometry from another crop.
    _layout = copyGalCalibrationLayout(_layout, clearCellGrid: true);
    _changed();
  }
}
