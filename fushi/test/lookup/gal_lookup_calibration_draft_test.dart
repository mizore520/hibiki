import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:fushi/src/lookup/gal_lookup_calibration_capture.dart';
import 'package:fushi/src/lookup/gal_lookup_calibration_draft.dart';
import 'package:fushi/src/lookup/gal_lookup_calibration_preview.dart';
import 'package:fushi/src/lookup/gal_lookup_surface_profile.dart';
import 'package:fushi/src/mining/window_capture_channel.dart';
import 'package:image/image.dart' as img;

const String _sha =
    '0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef';
const String _otherSha =
    'abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789';
const GalLookupReferenceClientV1 _client = GalLookupReferenceClientV1(
  widthPx: 1000,
  heightPx: 500,
  dpi: 96,
);
const GalLookupNormalizedRectV1 _rect = GalLookupNormalizedRectV1(
  left: 0.1,
  top: 0.2,
  width: 0.6,
  height: 0.25,
);
const GalLookupTextLayoutV1 _layout = GalLookupTextLayoutV1(
  fontFamily: 'Synthetic fixture font',
  fontSizePerClientHeight: 0.04,
  lineHeight: 1.2,
);
const WindowCaptureMetadata _metadata = WindowCaptureMetadata(
  capturedHwnd: 77,
  capturedPid: 1234,
  clientLeftPx: -300,
  clientTopPx: 90,
  clientWidthPx: 1000,
  clientHeightPx: 500,
  imageWidthPx: 1000,
  imageHeightPx: 500,
  dpi: 96,
  clientAreaComplete: true,
  capturedAtTickMs: 400,
);
final Uint8List _png = Uint8List.fromList(
  img.encodePng(img.Image(width: 1000, height: 500)),
);

GalCalibrationSample _sample({
  String text = 'ABCDE',
  String sha = _sha,
  String occurrenceId = 'synthetic-entry-1',
  bool validation = false,
  Map<int, Offset> anchors = const <int, Offset>{},
  Uint8List? png,
}) => GalCalibrationSample(
  capture: GalLookupCalibrationCapture(
    sourceText: text,
    pngBytes: png ?? _png,
    referenceClient: _client,
    exePath: r'C:\synthetic\game.exe',
    exeSha256: sha,
    sessionEpoch: 2,
    occurrenceId: occurrenceId,
    sourceSequence: 17,
    targetHwnd: 77,
    capturedAt: DateTime.utc(2026, 9, 17, 12),
    selectedThreadKey: 'synthetic-body',
    captureMetadata: _metadata,
  ),
  validation: validation,
  anchors: anchors,
);

GalLookupCalibrationDraft _draft(List<GalCalibrationSample> samples) =>
    GalLookupCalibrationDraft(rect: _rect, layout: _layout, samples: samples);

/// A simple, independently defined renderer for fitting tests. Each glyph has
/// a 20 px advance before tracking, with a 10 by 20 px hit region.
Future<GalCalibrationPreview> _linearPreview({
  required String text,
  required GalLookupReferenceClientV1 client,
  required GalLookupNormalizedRectV1 rect,
  required GalLookupTextLayoutV1 layout,
}) async => GalCalibrationPreview(
  boxes: <GalCalibrationBox>[
    for (int i = 0; i < text.length; i++)
      GalCalibrationBox(
        i,
        1,
        Rect.fromLTWH(
          rect.left * client.widthPx +
              i * (20 + layout.letterSpacingPerClientHeight * client.heightPx),
          rect.top * client.heightPx,
          10,
          20,
        ),
      ),
  ],
);

// The first and last characters require a 15 px horizontal / 5 px vertical
// translation plus an additional 2 px per character advance.
const Map<int, Offset> _targetPoints = <int, Offset>{
  0: Offset(0.120, 0.230),
  4: Offset(0.208, 0.230),
};

void main() {
  group('private calibration draft storage', () {
    late Directory directory;
    late GalLookupCalibrationStore store;

    setUp(() async {
      directory = await Directory.systemTemp.createTemp('fushi-calibration-');
      store = GalLookupCalibrationStore(directory: directory);
    });

    tearDown(() async {
      await directory.delete(recursive: true);
    });

    test(
      'missing draft is empty and saved samples survive replacement',
      () async {
        expect(await store.load(_sha), isNull);
        final GalCalibrationSample reference = _sample(anchors: _targetPoints);
        final GalCalibrationSample validation = _sample(
          text: 'FGHIJ',
          occurrenceId: 'synthetic-entry-2',
          validation: true,
          anchors: const <int, Offset>{2: Offset(0.15, 0.22)},
        );
        await store.save(_sha, _draft(<GalCalibrationSample>[reference]));
        await store.save(
          _sha,
          _draft(<GalCalibrationSample>[reference, validation]),
        );

        final GalLookupCalibrationDraft restored = (await store.load(_sha))!;
        expect(restored.rect, _rect);
        expect(restored.layout, _layout);
        expect(restored.samples, hasLength(2));
        expect(restored.samples.first.anchors, _targetPoints);
        expect(restored.samples.first.capture.pngBytes, _png);
        expect(
          restored.samples.first.capture.occurrenceId,
          'synthetic-entry-1',
        );
        expect(restored.samples.first.capture.sourceSequence, 17);
        expect(
          restored.samples.first.capture.captureMetadata!.clientLeftPx,
          -300,
        );
        expect(restored.samples.last.validation, isTrue);
        expect(restored.samples.last.capture.sourceText, 'FGHIJ');
        expect(
          await directory.list().length,
          1,
          reason: 'No pending file remains',
        );
      },
    );

    test(
      'wrong executable cannot replace or load another game draft',
      () async {
        await store.save(_sha, _draft(<GalCalibrationSample>[_sample()]));
        await expectLater(
          store.save(
            _sha,
            _draft(<GalCalibrationSample>[_sample(sha: _otherSha)]),
          ),
          throwsFormatException,
        );
        expect(
          (await store.load(_sha))!.samples.single.capture.exeSha256,
          _sha,
        );

        final File file = File(
          '${directory.path}${Platform.pathSeparator}$_sha.json',
        );
        final Map<String, dynamic> json =
            jsonDecode(await file.readAsString()) as Map<String, dynamic>;
        (json['samples'] as List<dynamic>).single['capture']['exeSha256'] =
            _otherSha;
        await file.writeAsString(jsonEncode(json));
        await expectLater(store.load(_sha), throwsFormatException);
        await expectLater(store.load('../outside'), throwsFormatException);
      },
    );

    test(
      'ninth sample is refused without overwriting the saved draft',
      () async {
        final GalCalibrationSample sample = _sample();
        await store.save(_sha, _draft(<GalCalibrationSample>[sample]));
        final GalLookupCalibrationDraft oversized = _draft(
          List<GalCalibrationSample>.filled(9, sample),
        );
        await expectLater(store.save(_sha, oversized), throwsFormatException);
        expect((await store.load(_sha))!.samples, hasLength(1));
        expect(
          () => GalLookupCalibrationDraft.fromJson(oversized.toJson()),
          throwsFormatException,
        );
      },
    );

    test('combined screenshot budget is enforced before writing', () async {
      await store.save(_sha, _draft(<GalCalibrationSample>[_sample()]));
      final Uint8List largePng = Uint8List(12 * 1024 * 1024)
        ..setRange(0, _png.length, _png);
      final GalCalibrationSample largeSample = _sample(png: largePng);
      final GalLookupCalibrationDraft oversized = _draft(
        List<GalCalibrationSample>.filled(6, largeSample),
      );
      await expectLater(store.save(_sha, oversized), throwsFormatException);
      expect((await store.load(_sha))!.samples.single.capture.pngBytes, _png);
    });
  });

  group('fitting marked characters', () {
    test(
      'two separated characters determine translation and tracking',
      () async {
        final GalLookupCalibrationDraft original = _draft(
          <GalCalibrationSample>[_sample(anchors: _targetPoints)],
        );
        final GalLookupCalibrationDraft result =
            (await fitGalCalibrationAnchors(original, build: _linearPreview))!;
        expect(result.rect.left, closeTo(0.115, 1e-9));
        expect(result.rect.top, closeTo(0.210, 1e-9));
        expect(
          result.layout.letterSpacingPerClientHeight,
          closeTo(0.004, 1e-9),
        );
        expect(result.rect.width, original.rect.width);
        expect(result.rect.height, original.rect.height);
        expect(result.layout.fontFamily, original.layout.fontFamily);
        expect(
          result.layout.fontSizePerClientHeight,
          original.layout.fontSizePerClientHeight,
        );
        expect(result.layout.lineHeight, original.layout.lineHeight);
        expect(
          original.rect,
          _rect,
          reason: 'Fitting does not mutate the draft',
        );

        final GalCalibrationPreview preview = await _linearPreview(
          text: 'ABCDE',
          client: _client,
          rect: result.rect,
          layout: result.layout,
        );
        expect(preview.boxForIndex(0)!.rect.center.dx, closeTo(120, 1e-8));
        expect(preview.boxForIndex(4)!.rect.center.dx, closeTo(208, 1e-8));
        expect(preview.boxForIndex(4)!.rect.center.dy, closeTo(115, 1e-8));
      },
    );

    test(
      'held-out points remain available but cannot influence the fit',
      () async {
        final List<String> rendered = <String>[];
        final GalCalibrationSample validation = _sample(
          text: 'HELDOUT',
          validation: true,
          anchors: const <int, Offset>{
            0: Offset(0.8, 0.8),
            4: Offset(0.9, 0.9),
          },
        );
        final GalLookupCalibrationDraft result =
            (await fitGalCalibrationAnchors(
              _draft(<GalCalibrationSample>[
                _sample(anchors: _targetPoints),
                validation,
              ]),
              build:
                  ({
                    required String text,
                    required GalLookupReferenceClientV1 client,
                    required GalLookupNormalizedRectV1 rect,
                    required GalLookupTextLayoutV1 layout,
                  }) async {
                    rendered.add(text);
                    return _linearPreview(
                      text: text,
                      client: client,
                      rect: rect,
                      layout: layout,
                    );
                  },
            ))!;
        expect(
          rendered,
          contains('HELDOUT'),
          reason: 'Held-out layout is checked',
        );
        expect(result.rect.left, closeTo(0.115, 1e-9));
        expect(
          result.layout.letterSpacingPerClientHeight,
          closeTo(0.004, 1e-9),
        );
        expect(result.samples.last, same(validation));
      },
    );

    test(
      'held-out overflow refuses the fit without changing the draft',
      () async {
        final GalLookupCalibrationDraft original = _draft(
          <GalCalibrationSample>[
            _sample(anchors: _targetPoints),
            _sample(text: 'HELDOUT', validation: true),
          ],
        );
        final GalLookupCalibrationDraft? fitted =
            await fitGalCalibrationAnchors(
              original,
              build:
                  ({
                    required String text,
                    required GalLookupReferenceClientV1 client,
                    required GalLookupNormalizedRectV1 rect,
                    required GalLookupTextLayoutV1 layout,
                  }) async {
                    if (text == 'HELDOUT' &&
                        layout.letterSpacingPerClientHeight > 0) {
                      return const GalCalibrationPreview(
                        boxes: <GalCalibrationBox>[],
                        reason: 'text_does_not_fit',
                      );
                    }
                    return _linearPreview(
                      text: text,
                      client: client,
                      rect: rect,
                      layout: layout,
                    );
                  },
            );
        expect(fitted, isNull);
        expect(original.rect, _rect);
        expect(original.layout, _layout);
        expect(original.samples.last.validation, isTrue);
      },
    );

    test('a single point or only held-out points cannot train a fit', () async {
      for (final GalCalibrationSample sample in <GalCalibrationSample>[
        _sample(anchors: const <int, Offset>{0: Offset(0.12, 0.23)}),
        _sample(anchors: _targetPoints, validation: true),
      ]) {
        expect(
          await fitGalCalibrationAnchors(
            _draft(<GalCalibrationSample>[sample]),
            build: _linearPreview,
          ),
          isNull,
        );
      }
    });

    test(
      'points on different lines cannot establish character spacing',
      () async {
        final GalLookupCalibrationDraft? result =
            await fitGalCalibrationAnchors(
              _draft(<GalCalibrationSample>[_sample(anchors: _targetPoints)]),
              build:
                  ({
                    required String text,
                    required GalLookupReferenceClientV1 client,
                    required GalLookupNormalizedRectV1 rect,
                    required GalLookupTextLayoutV1 layout,
                  }) async {
                    final GalCalibrationPreview preview = await _linearPreview(
                      text: text,
                      client: client,
                      rect: rect,
                      layout: layout,
                    );
                    return GalCalibrationPreview(
                      boxes: <GalCalibrationBox>[
                        for (final GalCalibrationBox box in preview.boxes)
                          GalCalibrationBox(
                            box.charIndex,
                            box.charLength,
                            box.rect.shift(
                              Offset(0, box.charIndex == 4 ? 40 : 0),
                            ),
                          ),
                      ],
                    );
                  },
            );
        expect(result, isNull);
      },
    );

    for (final bool duringDerivative in <bool>[true, false]) {
      test(
        'rejects wrapping ${duringDerivative ? 'during measurement' : 'after fitting'}',
        () async {
          final GalLookupCalibrationDraft? result =
              await fitGalCalibrationAnchors(
                _draft(<GalCalibrationSample>[_sample(anchors: _targetPoints)]),
                build:
                    ({
                      required String text,
                      required GalLookupReferenceClientV1 client,
                      required GalLookupNormalizedRectV1 rect,
                      required GalLookupTextLayoutV1 layout,
                    }) async {
                      final GalCalibrationPreview preview =
                          await _linearPreview(
                            text: text,
                            client: client,
                            rect: rect,
                            layout: layout,
                          );
                      final bool wrap = duringDerivative
                          ? layout.letterSpacingPerClientHeight < 0
                          : layout.letterSpacingPerClientHeight > 0;
                      return GalCalibrationPreview(
                        boxes: <GalCalibrationBox>[
                          for (final GalCalibrationBox box in preview.boxes)
                            GalCalibrationBox(
                              box.charIndex,
                              box.charLength,
                              box.rect.shift(
                                Offset(0, wrap && box.charIndex == 4 ? 40 : 0),
                              ),
                            ),
                        ],
                      );
                    },
              );
          expect(result, isNull);
        },
      );
    }

    test(
      'rejects a fit when the renderer makes the marked error worse',
      () async {
        final GalLookupCalibrationDraft? result =
            await fitGalCalibrationAnchors(
              _draft(<GalCalibrationSample>[_sample(anchors: _targetPoints)]),
              build:
                  ({
                    required String text,
                    required GalLookupReferenceClientV1 client,
                    required GalLookupNormalizedRectV1 rect,
                    required GalLookupTextLayoutV1 layout,
                  }) async {
                    final GalCalibrationPreview preview = await _linearPreview(
                      text: text,
                      client: client,
                      rect: rect,
                      layout: layout,
                    );
                    final double nonlinearShift =
                        layout.letterSpacingPerClientHeight > 0 ? 50 : 0;
                    return GalCalibrationPreview(
                      boxes: <GalCalibrationBox>[
                        for (final GalCalibrationBox box in preview.boxes)
                          GalCalibrationBox(
                            box.charIndex,
                            box.charLength,
                            box.rect.shift(Offset(nonlinearShift, 0)),
                          ),
                      ],
                    );
                  },
            );
        expect(result, isNull);
      },
    );
  });
}
