import 'dart:typed_data';
import 'dart:ui' show PointerDeviceKind;

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fushi/i18n/strings.g.dart';
import 'package:fushi/src/lookup/gal_lookup_calibration_capture.dart';
import 'package:fushi/src/lookup/gal_lookup_calibration_draft.dart';
import 'package:fushi/src/lookup/gal_lookup_calibration_image_fit.dart';
import 'package:fushi/src/lookup/gal_lookup_calibration_preview.dart';
import 'package:fushi/src/lookup/gal_lookup_surface_profile.dart';
import 'package:fushi/src/mining/window_capture_channel.dart';
import 'package:fushi/src/pages/implementations/gal_lookup_samples_dialog.dart';
import 'package:fushi/src/pages/implementations/gal_lookup_calibration_canvas.dart';
import 'package:image/image.dart' as img;

const String _sha =
    '0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef';
const String _text = 'A😀e\u0301B';
const GalLookupReferenceClientV1 _client = GalLookupReferenceClientV1(
  widthPx: 800,
  heightPx: 600,
  dpi: 96,
);
const GalLookupNormalizedRectV1 _rect = GalLookupNormalizedRectV1(
  left: 0.1,
  top: 0.6,
  width: 0.8,
  height: 0.25,
);
const GalLookupTextLayoutV1 _layout = GalLookupTextLayoutV1(
  fontFamily: 'Initial font',
);
const WindowCaptureMetadata _metadata = WindowCaptureMetadata(
  capturedHwnd: 77,
  capturedPid: 1234,
  clientLeftPx: 120,
  clientTopPx: 90,
  clientWidthPx: 800,
  clientHeightPx: 600,
  imageWidthPx: 800,
  imageHeightPx: 600,
  dpi: 96,
  clientAreaComplete: true,
  capturedAtTickMs: 400,
);
final Uint8List _png = Uint8List.fromList(
  img.encodePng(img.Image(width: 800, height: 600)),
);

GalLookupCalibrationCapture _capture() => GalLookupCalibrationCapture(
  sourceText: _text,
  pngBytes: _png,
  referenceClient: _client,
  exePath: r'C:\synthetic\game.exe',
  exeSha256: _sha,
  sessionEpoch: 2,
  occurrenceId: 'synthetic-entry-1',
  sourceSequence: 17,
  targetHwnd: 77,
  capturedAt: DateTime.utc(2026, 9, 17, 12),
  selectedThreadKey: 'synthetic-body',
  captureMetadata: _metadata,
);

GalLookupCalibrationDraft _draft({
  int count = 1,
  GalLookupNormalizedRectV1 rect = _rect,
  Map<int, Offset> anchors = const <int, Offset>{},
}) => GalLookupCalibrationDraft(
  rect: rect,
  layout: _layout,
  samples: <GalCalibrationSample>[
    for (int i = 0; i < count; i++)
      GalCalibrationSample(capture: _capture(), anchors: anchors),
  ],
);

Future<GalCalibrationPreview> _preview({
  required String text,
  required GalLookupReferenceClientV1 client,
  required GalLookupNormalizedRectV1 rect,
  required GalLookupTextLayoutV1 layout,
}) async => const GalCalibrationPreview(
  boxes: <GalCalibrationBox>[
    GalCalibrationBox(0, 1, Rect.fromLTWH(80, 360, 24, 30)),
    GalCalibrationBox(1, 2, Rect.fromLTWH(104, 360, 24, 30)),
    GalCalibrationBox(3, 2, Rect.fromLTWH(128, 360, 24, 30)),
    GalCalibrationBox(5, 1, Rect.fromLTWH(152, 360, 24, 30)),
  ],
);

class _MemoryStore extends GalLookupCalibrationStore {
  _MemoryStore({this.draft});

  GalLookupCalibrationDraft? draft;
  bool failSave = false;
  final List<GalLookupCalibrationDraft> saved = <GalLookupCalibrationDraft>[];

  @override
  Future<GalLookupCalibrationDraft?> load(String hash) async {
    expect(hash, _sha);
    return draft;
  }

  @override
  Future<void> save(String hash, GalLookupCalibrationDraft draft) async {
    expect(hash, _sha);
    if (failSave) throw StateError('synthetic disk failure');
    saved.add(draft);
    this.draft = draft;
  }
}

class _Result {
  bool closed = false;
  GalLookupCalibrationDraft? applied;
}

Future<_Result> _open(
  WidgetTester tester, {
  required _MemoryStore store,
  Future<GalLookupCalibrationCapture> Function() capture = _captureAsync,
  GalCalibrationPreviewBuilder previewBuilder = _preview,
  Future<GalCalibrationImageFit> Function(
        GalLookupCalibrationDraft draft, {
        GalCalibrationPreviewBuilder build,
      })
      imageFitter =
      fitGalCalibrationImages,
  Size size = const Size(1280, 900),
  bool manual = true,
}) async {
  tester.view.devicePixelRatio = 1;
  tester.view.physicalSize = size;
  addTearDown(tester.view.resetDevicePixelRatio);
  addTearDown(tester.view.resetPhysicalSize);
  final _Result result = _Result();
  await tester.pumpWidget(
    MaterialApp(
      home: Builder(
        builder: (BuildContext context) => Scaffold(
          body: Center(
            child: ElevatedButton(
              onPressed: () async {
                result.applied = await showDialog<GalLookupCalibrationDraft>(
                  context: context,
                  barrierDismissible: false,
                  builder: (_) => GalLookupSamplesDialog(
                    exeSha256: _sha,
                    initialRect: _rect,
                    initialLayout: _layout,
                    capture: capture,
                    store: store,
                    previewBuilder: previewBuilder,
                    imageFitter: imageFitter,
                  ),
                );
                result.closed = true;
              },
              child: const Text('Open synthetic sample notebook'),
            ),
          ),
        ),
      ),
    ),
  );
  await tester.tap(find.byType(ElevatedButton));
  await tester.pumpAndSettle();
  // Existing anchor/font cases explicitly opt in to the advanced workflow.
  if (manual) {
    final Finder button = find.byKey(
      const ValueKey<String>('calibration-manual-layout'),
    );
    await tester.ensureVisible(button);
    await tester.tap(button);
    await tester.pumpAndSettle();
  }
  return result;
}

Future<GalLookupCalibrationCapture> _captureAsync() async => _capture();

Finder _cluster(String label) => find.byWidgetPredicate(
  (Widget widget) =>
      widget is ChoiceChip &&
      widget.label is Text &&
      (widget.label as Text).data == label,
);

Future<void> _enterFont(WidgetTester tester, String value) async {
  final Finder field = find.byKey(const ValueKey<String>('calibration-font'));
  await tester.ensureVisible(field);
  await tester.enterText(field, value);
  // Deliberately do not submit the text field: normal typing must take effect.
  await tester.pumpAndSettle();
}

void main() {
  setUp(() => LocaleSettings.setLocale(AppLocale.en));

  GalLookupCalibrationCanvas canvas(WidgetTester tester) =>
      tester.widget<GalLookupCalibrationCanvas>(
        find.byType(GalLookupCalibrationCanvas),
      );

  testWidgets(
    'dragging the outer area moves layout without moving reference points',
    (WidgetTester tester) async {
      final _MemoryStore store = _MemoryStore(
        draft: _draft(anchors: const <int, Offset>{0: Offset(0.3, 0.7)}),
      );
      await _open(tester, store: store);
      final Size imageSize = tester.getSize(find.byType(Image));
      await tester.drag(
        find.byKey(const ValueKey<String>('calibration-region-move')),
        const Offset(30, -20),
      );
      await tester.pumpAndSettle();
      expect(
        canvas(tester).rect.left,
        closeTo(_rect.left + 30 / imageSize.width, 0.002),
      );
      expect(
        canvas(tester).rect.top,
        closeTo(_rect.top - 20 / imageSize.height, 0.002),
      );
      expect(canvas(tester).anchors[0], const Offset(0.3, 0.7));
      await tester.tap(find.byTooltip(t.game_lookup_samples_save));
      await tester.pumpAndSettle();
      expect(store.saved.last.rect, canvas(tester).rect);
    },
  );

  testWidgets(
    'bottom handle visibly resizes outer area without changing font size',
    (WidgetTester tester) async {
      final _MemoryStore store = _MemoryStore(draft: _draft());
      await _open(tester, store: store);
      final Size imageSize = tester.getSize(find.byType(Image));
      await tester.drag(
        find.byKey(const ValueKey<String>('calibration-region-bottom')),
        const Offset(0, -35),
      );
      await tester.pumpAndSettle();
      expect(
        canvas(tester).rect.height,
        closeTo(_rect.height - 35 / imageSize.height, 0.002),
      );
      expect(canvas(tester).rect.top, _rect.top);
      await tester.tap(find.byTooltip(t.game_lookup_samples_save));
      await tester.pumpAndSettle();
      expect(
        store.saved.last.layout.fontSizePerClientHeight,
        _layout.fontSizePerClientHeight,
      );
    },
  );

  testWidgets(
    'zoomed region drag uses inverse transform and stays inside the screenshot',
    (WidgetTester tester) async {
      await _open(tester, store: _MemoryStore(draft: _draft()));
      final Size imageSize = tester.getSize(find.byType(Image));
      await tester.tap(find.byTooltip(t.game_lookup_samples_zoom_in));
      await tester.pumpAndSettle();
      await tester.drag(
        find.byKey(const ValueKey<String>('calibration-region-move')),
        const Offset(30, -15),
      );
      await tester.pumpAndSettle();
      expect(
        canvas(tester).rect.left,
        closeTo(_rect.left + 30 / 1.5 / imageSize.width, 0.003),
      );
      await tester.drag(
        find.byKey(const ValueKey<String>('calibration-region-move')),
        const Offset(2000, 2000),
      );
      await tester.pumpAndSettle();
      expect(canvas(tester).rect.isValid, isTrue);
      expect(
        canvas(tester).rect.left + canvas(tester).rect.width,
        closeTo(1, 1e-8),
      );
      expect(
        canvas(tester).rect.top + canvas(tester).rect.height,
        closeTo(1, 1e-8),
      );
    },
  );

  testWidgets('existing points can be dragged and nudged by one source pixel', (
    WidgetTester tester,
  ) async {
    final _MemoryStore store = _MemoryStore(
      draft: _draft(anchors: const <int, Offset>{0: Offset(0.3, 0.7)}),
    );
    await _open(tester, store: store);
    await tester.tap(_cluster('A'));
    await tester.pumpAndSettle();
    final Size imageSize = tester.getSize(find.byType(Image));
    await tester.drag(
      find.byKey(const ValueKey<String>('calibration-anchor-0')),
      const Offset(25, -20),
    );
    await tester.pumpAndSettle();
    final Offset moved = canvas(tester).anchors[0]!;
    expect(moved.dx, closeTo(0.3 + 25 / imageSize.width, 0.002));
    expect(moved.dy, closeTo(0.7 - 20 / imageSize.height, 0.002));
    final Finder nudge = find.byKey(
      const ValueKey<String>('anchor-nudge-right'),
    );
    await tester.ensureVisible(nudge);
    await tester.tap(nudge);
    await tester.pumpAndSettle();
    expect(canvas(tester).anchors[0]!.dx, closeTo(moved.dx + 1 / 800, 1e-9));
    await tester.tap(find.byTooltip(t.game_lookup_samples_save));
    await tester.pumpAndSettle();
    expect(
      store.saved.last.samples.single.anchors[0],
      canvas(tester).anchors[0],
    );
  });

  testWidgets(
    'pixel height input updates visible bounds and saves pending input',
    (WidgetTester tester) async {
      final _MemoryStore store = _MemoryStore(draft: _draft());
      await _open(tester, store: store);
      final Finder field = find.descendant(
        of: find.byKey(const ValueKey<String>('calibration-number-height')),
        matching: find.byType(TextField),
      );
      await tester.ensureVisible(field);
      await tester.enterText(field, '100');
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle();
      expect(canvas(tester).rect.height, closeTo(100 / 600, 1e-9));
      await tester.enterText(field, '120');
      await tester.tap(find.byTooltip(t.game_lookup_samples_save));
      await tester.pumpAndSettle();
      expect(store.saved.last.rect.height, closeTo(120 / 600, 1e-9));
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets('zoomed mouse adjustments preserve the point grab offset', (
    WidgetTester tester,
  ) async {
    await _open(
      tester,
      store: _MemoryStore(
        draft: _draft(anchors: const <int, Offset>{0: Offset(0.3, 0.7)}),
      ),
    );
    await tester.tap(_cluster('A'));
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip(t.game_lookup_samples_zoom_in));
    await tester.pumpAndSettle();
    final Offset zoomedPoint = tester.getCenter(
      find.byKey(const ValueKey<String>('calibration-anchor-0')),
    );
    await tester.tap(
      find.byKey(const ValueKey<String>('calibration-mode-pan')),
    );
    await tester.pumpAndSettle();
    await tester.tap(
      find.byKey(const ValueKey<String>('calibration-mode-points')),
    );
    await tester.pumpAndSettle();
    expect(
      tester.getCenter(
        find.byKey(const ValueKey<String>('calibration-anchor-0')),
      ),
      zoomedPoint,
    );
    final Size imageSize = tester.getSize(find.byType(Image));
    final Offset grab =
        tester.getCenter(
          find.byKey(const ValueKey<String>('calibration-anchor-0')),
        ) +
        const Offset(6, -4);
    final TestGesture mouse = await tester.startGesture(
      grab,
      kind: PointerDeviceKind.mouse,
    );
    await mouse.moveBy(const Offset(1, 0));
    await tester.pump();
    expect(
      canvas(tester).anchors[0]!.dx,
      closeTo(0.3 + 1 / 1.5 / imageSize.width, 1e-8),
    );
    expect(canvas(tester).anchors[0]!.dy, closeTo(0.7, 1e-8));
    await mouse.up();
    await tester.pumpAndSettle();
  });

  testWidgets('a narrow saved region at the edge can still be resized', (
    WidgetTester tester,
  ) async {
    const GalLookupNormalizedRectV1 narrow = GalLookupNormalizedRectV1(
      left: 0.001,
      top: 0.4,
      width: 0.005,
      height: 0.2,
    );
    await _open(
      tester,
      store: _MemoryStore(draft: _draft(rect: narrow)),
    );
    final Offset start = tester.getCenter(
      find.byKey(const ValueKey<String>('calibration-region-left')),
    );
    final TestGesture mouse = await tester.startGesture(
      start,
      kind: PointerDeviceKind.mouse,
    );
    await mouse.moveBy(const Offset(-25, 0));
    await mouse.up();
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
    expect(canvas(tester).rect.left, 0);
    expect(canvas(tester).rect.width, closeTo(0.006, 1e-8));
  });

  testWidgets('capture action saves the exact sample immediately', (
    WidgetTester tester,
  ) async {
    final _MemoryStore store = _MemoryStore();
    int captures = 0;
    final GalLookupCalibrationCapture sample = _capture();
    final _Result result = await _open(
      tester,
      store: store,
      capture: () async {
        captures++;
        return sample;
      },
    );
    expect(find.byType(Image), findsNothing);
    await tester.tap(find.byTooltip(t.game_lookup_samples_capture));
    await tester.pumpAndSettle();
    expect(captures, 1);
    expect(store.saved, hasLength(1));
    expect(store.saved.single.samples.single.capture, same(sample));
    expect(find.byType(Image), findsOneWidget);
    expect(result.closed, isFalse);
    expect(tester.takeException(), isNull);
  });

  testWidgets(
    'native clusters are single choices and validation keeps their anchors',
    (WidgetTester tester) async {
      final _MemoryStore store = _MemoryStore(draft: _draft());
      await _open(tester, store: store);
      expect(_cluster('A'), findsOneWidget);
      expect(_cluster('😀'), findsOneWidget);
      expect(_cluster('e\u0301'), findsOneWidget);
      expect(_cluster('B'), findsOneWidget);
      expect(_cluster('e'), findsNothing);
      expect(_cluster('\u0301'), findsNothing);

      await tester.tap(_cluster('e\u0301'));
      await tester.pump();
      final Finder screenshot = find.byType(Image);
      await tester.tapAt(tester.getCenter(screenshot));
      await tester.pump();
      await tester.ensureVisible(find.byType(FilterChip));
      await tester.tap(find.byType(FilterChip));
      await tester.pumpAndSettle();
      await tester.tap(find.byTooltip(t.game_lookup_samples_save));
      await tester.pumpAndSettle();

      final GalCalibrationSample sample = store.saved.last.samples.single;
      expect(sample.validation, isTrue);
      expect(sample.anchors.keys, <int>[3]);
      expect(sample.anchors[3]!.dx, closeTo(0.5, 0.01));
      expect(sample.anchors[3]!.dy, closeTo(0.5, 0.01));
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets('typing a font updates preview and save without pressing Enter', (
    WidgetTester tester,
  ) async {
    final _MemoryStore store = _MemoryStore(draft: _draft());
    final List<String> previewFonts = <String>[];
    await _open(
      tester,
      store: store,
      previewBuilder:
          ({
            required String text,
            required GalLookupReferenceClientV1 client,
            required GalLookupNormalizedRectV1 rect,
            required GalLookupTextLayoutV1 layout,
          }) async {
            previewFonts.add(layout.fontFamily);
            return _preview(
              text: text,
              client: client,
              rect: rect,
              layout: layout,
            );
          },
    );
    await _enterFont(tester, 'Different fixture font');
    expect(previewFonts.last, 'Different fixture font');
    await tester.tap(find.byTooltip(t.game_lookup_samples_save));
    await tester.pumpAndSettle();
    expect(store.saved.single.layout.fontFamily, 'Different fixture font');
    expect(find.byType(GalLookupSamplesDialog), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('closing saves a dirty draft without applying it', (
    WidgetTester tester,
  ) async {
    final _MemoryStore store = _MemoryStore(draft: _draft());
    final _Result result = await _open(tester, store: store);
    await _enterFont(tester, 'Draft-only font');
    await tester.tap(find.byType(CloseButton));
    await tester.pumpAndSettle();
    expect(store.saved.single.layout.fontFamily, 'Draft-only font');
    expect(result.closed, isTrue);
    expect(result.applied, isNull);
    expect(find.byType(GalLookupSamplesDialog), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('apply saves and returns the edited draft to live calibration', (
    WidgetTester tester,
  ) async {
    final _MemoryStore store = _MemoryStore(draft: _draft());
    final _Result result = await _open(tester, store: store);
    await _enterFont(tester, 'Applied font');
    await tester.tap(find.text(t.game_lookup_samples_apply));
    await tester.pumpAndSettle();
    expect(result.closed, isTrue);
    expect(result.applied!.layout.fontFamily, 'Applied font');
    expect(result.applied!.samples.single.capture.sourceText, _text);
    expect(store.saved.single.layout.fontFamily, 'Applied font');
    expect(tester.takeException(), isNull);
  });

  testWidgets(
    'apply validates pending numeric input before returning a draft',
    (WidgetTester tester) async {
      final _MemoryStore store = _MemoryStore(draft: _draft());
      final _Result result = await _open(
        tester,
        store: store,
        previewBuilder:
            ({
              required String text,
              required GalLookupReferenceClientV1 client,
              required GalLookupNormalizedRectV1 rect,
              required GalLookupTextLayoutV1 layout,
            }) async => rect.height < 0.2
            ? const GalCalibrationPreview(boxes: [], reason: 'overflow')
            : _preview(text: text, client: client, rect: rect, layout: layout),
      );
      final Finder field = find.descendant(
        of: find.byKey(const ValueKey<String>('calibration-number-height')),
        matching: find.byType(TextField),
      );
      await tester.ensureVisible(field);
      await tester.enterText(field, '100');
      // Apply while the last accepted preview still corresponds to 150 px.
      await tester.tap(find.text(t.game_lookup_samples_apply));
      await tester.pumpAndSettle();
      expect(result.closed, isFalse);
      expect(result.applied, isNull);
      expect(canvas(tester).rect.height, closeTo(100 / 600, 1e-9));
      expect(find.text(t.game_lookup_samples_unavailable), findsWidgets);
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets(
    'image alignment applies grid and hides irrelevant font controls',
    (tester) async {
      final _MemoryStore store = _MemoryStore(draft: _draft());
      final _Result result = await _open(
        tester,
        store: store,
        manual: false,
        imageFitter: (draft, {build = _preview}) async {
          expect(draft.samples.single.validation, isFalse);
          expect(draft.samples.single.anchors, isEmpty);
          return GalCalibrationImageFit(
            draft: GalLookupCalibrationDraft(
              rect: draft.rect,
              samples: draft.samples,
              layout: const GalLookupTextLayoutV1(
                cellGrid: GalLookupCellGridV1(
                  advancePerClientHeight: 0.04,
                  lineAdvancePerClientHeight: 0.06,
                  cellHeightPerClientHeight: 0.05,
                  columns: 20,
                  continuationIndent: 0,
                  quotedContinuationIndent: 1,
                ),
              ),
            ),
          );
        },
      );
      await tester.tap(
        find.byKey(const ValueKey<String>('calibration-auto-align')),
      );
      await tester.pumpAndSettle();
      expect(
        find.byKey(const ValueKey<String>('calibration-font')),
        findsNothing,
      );
      expect(find.text(t.game_lookup_samples_auto_success), findsWidgets);
      await tester.tap(find.text(t.game_lookup_samples_apply));
      await tester.pumpAndSettle();
      expect(result.applied!.layout.cellGrid!.columns, 20);
      expect(
        store.saved.single.layout.cellGrid,
        result.applied!.layout.cellGrid,
      );
    },
  );

  testWidgets('ambiguous image alignment preserves the saved layout', (
    tester,
  ) async {
    final _MemoryStore store = _MemoryStore(draft: _draft());
    await _open(
      tester,
      store: store,
      manual: false,
      imageFitter: (draft, {build = _preview}) async =>
          const GalCalibrationImageFit(reason: 'multiline_required'),
    );
    await tester.tap(
      find.byKey(const ValueKey<String>('calibration-auto-align')),
    );
    await tester.pumpAndSettle();
    expect(find.text(t.game_lookup_samples_auto_multiline), findsOneWidget);
    await tester.tap(find.byTooltip(t.game_lookup_samples_save));
    await tester.pumpAndSettle();
    expect(store.saved.single.layout, _layout);
    expect(store.saved.single.rect, _rect);
  });

  testWidgets(
    'automatic mode ignores legacy overflow and preserves the split',
    (WidgetTester tester) async {
      final GalLookupCalibrationDraft original = _draft(count: 3);
      final _MemoryStore store = _MemoryStore(
        draft: GalLookupCalibrationDraft(
          rect: original.rect,
          layout: original.layout,
          samples: [
            original.samples[0].copyWith(validation: true),
            original.samples[1],
            original.samples[2],
          ],
        ),
      );
      int previews = 0;
      await _open(
        tester,
        store: store,
        manual: false,
        previewBuilder:
            ({
              required text,
              required client,
              required rect,
              required layout,
            }) async {
              previews++;
              return const GalCalibrationPreview(boxes: [], reason: 'overflow');
            },
        imageFitter: (draft, {build = _preview}) async {
          expect(draft.samples.map((s) => s.validation), [true, false, false]);
          return const GalCalibrationImageFit(
            reason: 'inconsistent_samples',
            sampleIndex: 2,
          );
        },
      );
      expect(previews, 0);
      expect(canvas(tester).boxes, isEmpty);
      expect(canvas(tester).anchors, isEmpty);
      expect(
        find.byKey(const ValueKey<String>('calibration-font')),
        findsNothing,
      );
      expect(find.text(t.game_lookup_samples_unavailable), findsNothing);
      expect(find.text(t.game_lookup_samples_auto_pending), findsOneWidget);
      final TextButton apply = tester.widget<TextButton>(
        find.widgetWithText(TextButton, t.game_lookup_samples_apply),
      );
      expect(apply.onPressed, isNull);
      await tester.tap(
        find.byKey(const ValueKey<String>('calibration-auto-align')),
      );
      await tester.pumpAndSettle();
      expect(
        find.text(
          t.game_lookup_samples_auto_sample_failed(
            sample: '3',
            reason: t.game_lookup_samples_auto_inconsistent,
          ),
        ),
        findsOneWidget,
      );
      await tester.tap(find.byTooltip(t.game_lookup_samples_save));
      await tester.pumpAndSettle();
      expect(store.saved.last.layout, original.layout);
      expect(store.saved.last.rect, original.rect);
      expect(store.saved.last.samples.map((s) => s.validation), [
        true,
        false,
        false,
      ]);
    },
  );

  testWidgets(
    'deleting from eight allows capture and a failed attempt recovers',
    (WidgetTester tester) async {
      final _MemoryStore store = _MemoryStore(draft: _draft(count: 8));
      int captures = 0;
      await _open(
        tester,
        store: store,
        manual: false,
        capture: () async {
          captures++;
          if (captures == 1) {
            throw const GalLookupCalibrationCaptureException(
              GalLookupCalibrationCaptureFailure.sceneChanged,
            );
          }
          return _capture();
        },
      );
      await tester.tap(find.byTooltip(t.game_lookup_samples_capture));
      await tester.pumpAndSettle();
      expect(captures, 0);
      expect(find.text(t.game_lookup_samples_limit), findsOneWidget);
      await tester.ensureVisible(find.text(t.game_lookup_samples_remove));
      await tester.tap(find.text(t.game_lookup_samples_remove));
      await tester.pumpAndSettle();
      await tester.tap(find.byTooltip(t.game_lookup_samples_capture));
      await tester.pumpAndSettle();
      expect(captures, 1);
      expect(find.text(t.game_lookup_samples_capture_changed), findsOneWidget);
      expect(store.saved, isEmpty);
      await tester.tap(find.byTooltip(t.game_lookup_samples_capture));
      await tester.pumpAndSettle();
      expect(captures, 2);
      expect(store.saved.single.samples, hasLength(8));
      expect(find.text(t.game_lookup_samples_capture_changed), findsNothing);
    },
  );

  testWidgets('disk failure keeps the new capture available for saving', (
    WidgetTester tester,
  ) async {
    final _MemoryStore store = _MemoryStore()..failSave = true;
    await _open(tester, store: store, manual: false);
    await tester.tap(find.byTooltip(t.game_lookup_samples_capture));
    await tester.pumpAndSettle();
    expect(find.byType(Image), findsOneWidget);
    expect(find.text(t.game_lookup_samples_save_failed), findsOneWidget);
    expect(find.text(t.game_lookup_samples_capture_failed), findsNothing);
    store.failSave = false;
    await tester.tap(find.byTooltip(t.game_lookup_samples_save));
    await tester.pumpAndSettle();
    expect(store.saved.single.samples, hasLength(1));
    expect(tester.takeException(), isNull);
  });

  for (final Size size in <Size>[const Size(1280, 900), const Size(800, 600)]) {
    testWidgets(
      'eight samples fit ${size.width.toInt()} by ${size.height.toInt()} without overflow',
      (WidgetTester tester) async {
        await _open(
          tester,
          store: _MemoryStore(draft: _draft(count: 8)),
          size: size,
        );
        expect(find.byType(Image), findsOneWidget);
        expect(_cluster('e\u0301'), findsOneWidget);
        expect(tester.takeException(), isNull);
      },
    );
  }
}
