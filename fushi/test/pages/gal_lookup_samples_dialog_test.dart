import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fushi/i18n/strings.g.dart';
import 'package:fushi/src/lookup/gal_lookup_calibration_capture.dart';
import 'package:fushi/src/lookup/gal_lookup_calibration_draft.dart';
import 'package:fushi/src/lookup/gal_lookup_calibration_preview.dart';
import 'package:fushi/src/lookup/gal_lookup_surface_profile.dart';
import 'package:fushi/src/mining/window_capture_channel.dart';
import 'package:fushi/src/pages/implementations/gal_lookup_samples_dialog.dart';
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
  Map<int, Offset> anchors = const <int, Offset>{},
}) => GalLookupCalibrationDraft(
  rect: _rect,
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
  final List<GalLookupCalibrationDraft> saved = <GalLookupCalibrationDraft>[];

  @override
  Future<GalLookupCalibrationDraft?> load(String hash) async {
    expect(hash, _sha);
    return draft;
  }

  @override
  Future<void> save(String hash, GalLookupCalibrationDraft draft) async {
    expect(hash, _sha);
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
  Size size = const Size(1280, 900),
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
  final Finder field = find.byType(TextField);
  await tester.ensureVisible(field);
  await tester.enterText(field, value);
  // Deliberately do not submit the text field: normal typing must take effect.
  await tester.pumpAndSettle();
}

void main() {
  setUp(() => LocaleSettings.setLocale(AppLocale.en));

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
