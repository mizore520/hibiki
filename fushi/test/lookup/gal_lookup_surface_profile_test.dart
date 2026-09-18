import 'package:flutter_test/flutter_test.dart';
import 'package:fushi/src/lookup/gal_attached_text_controller.dart';
import 'package:fushi/src/lookup/gal_lookup_surface_profile.dart';

const String _shaA =
    'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa';

GalLookupSurfaceVariantV1 variant({
  int width = 1920,
  int height = 1080,
  GalLookupNormalizedRectV1 bodyRect =
      GalAttachedTextController.defaultBodyRect,
}) {
  final GalLookupReferenceClientV1 client = GalLookupReferenceClientV1(
    widthPx: width,
    heightPx: height,
    dpi: 144,
  );
  return GalLookupSurfaceVariantV1(
    aspectRatio: client.aspectRatio,
    referenceClient: client,
    bodyRect: bodyRect,
    layout: const GalLookupTextLayoutV1(),
  );
}

GalLookupSurfaceProfileV1 profile({
  GalLookupSurfaceMode mode = GalLookupSurfaceMode.attachedOnly,
  bool accepted = true,
  List<GalLookupSurfaceVariantV1>? variants,
}) => GalLookupSurfaceProfileV1(
  exePath: r'C:/Games/Test/game.exe',
  exeSha256: _shaA,
  mode: mode,
  unsafeLeftClickAccepted: accepted,
  variants: variants ?? <GalLookupSurfaceVariantV1>[variant()],
);

void main() {
  test('exact v1 top-level schema and path-key identity round-trip', () {
    final Map<String, Object?> json = profile().toJson();
    expect(json.keys.toSet(), <String>{
      'schemaVersion',
      'exePath',
      'exeSha256',
      'mode',
      'unsafeLeftClickAccepted',
      'variants',
    });
    expect(json['mode'], 'attachedOnly');
    expect(json['exePath'], r'c:\games\test\game.exe');
    expect(GalLookupSurfaceProfileV1.tryFromJson(json)?.toJson(), json);
    expect(
      GalLookupSurfaceProfileV1.preferenceKeyForExePath(
        r'C:/Games/Test/game.exe',
      ),
      r'gal_lookup_surface_v1::c:\games\test\game.exe',
    );
    expect(
      GalLookupSurfaceProfileV1.preferenceKeyForExePath(
        r'\\Server//Share///Game.exe',
      ),
      r'gal_lookup_surface_v1::\\server\share\game.exe',
    );
  });

  test(
    'all four mode wire values are closed and unknown mode rejects profile',
    () {
      expect(
        GalLookupSurfaceMode.values.map(
          (GalLookupSurfaceMode mode) => mode.wireName,
        ),
        <String>['auto', 'nativeOnly', 'attachedOnly', 'off'],
      );
      final Map<String, Object?> invalid = profile().toJson()
        ..['mode'] = 'futureMode';
      expect(GalLookupSurfaceProfileV1.tryFromJson(invalid), isNull);
    },
  );

  test('fixed default rect and layout match plan', () {
    expect(
      GalAttachedTextController.defaultBodyRect,
      const GalLookupNormalizedRectV1(
        left: 0.08,
        top: 0.68,
        width: 0.84,
        height: 0.24,
      ),
    );
    expect(const GalLookupTextLayoutV1().toJson(), <String, Object?>{
      'fontFamily': '',
      'fontSizePerClientHeight': 0.045,
      'letterSpacingPerClientHeight': 0.0,
      'lineHeight': 1.0,
      'textAlign': 'left',
      'verticalAlign': 'top',
      'paddingPerClientHeight': 0.0,
    });
  });

  test('optional cell grid round-trips without changing legacy layout JSON', () {
    const GalLookupCellGridV1 grid = GalLookupCellGridV1(
      advancePerClientHeight: 0.03,
      lineAdvancePerClientHeight: 0.04,
      cellHeightPerClientHeight: 0.035,
      columns: 24,
      continuationIndent: 2,
      quotedContinuationIndent: 3,
    );
    const GalLookupTextLayoutV1 layout = GalLookupTextLayoutV1(
      cellGrid: grid,
    );
    expect(grid.isValid, isTrue);
    expect(layout.isValid, isTrue);
    expect(layout.toJson()['cellGrid'], grid.toJson());
    expect(GalLookupTextLayoutV1.tryFromJson(layout.toJson()), layout);
    expect(
      const GalLookupTextLayoutV1().toJson().containsKey('cellGrid'),
      isFalse,
    );
  });

  test('present but malformed cell grid rejects the complete layout', () {
    const GalLookupCellGridV1 grid = GalLookupCellGridV1(
      advancePerClientHeight: 0.03,
      lineAdvancePerClientHeight: 0.04,
      cellHeightPerClientHeight: 0.035,
      columns: 24,
      continuationIndent: 2,
      quotedContinuationIndent: 3,
    );
    final Map<String, Object?> valid = const GalLookupTextLayoutV1(
      cellGrid: grid,
    ).toJson();
    Map<String, Object?> withGrid(
      void Function(Map<String, Object?> grid) mutate,
    ) {
      final Map<String, Object?> result = Map<String, Object?>.of(valid);
      final Map<String, Object?> gridMap = Map<String, Object?>.of(
        (valid['cellGrid']! as Map<Object?, Object?>).cast<String, Object?>(),
      );
      mutate(gridMap);
      result['cellGrid'] = gridMap;
      return result;
    }

    final Map<String, Object?> missing = withGrid(
      (Map<String, Object?> grid) => grid.remove('columns'),
    );
    expect(GalLookupTextLayoutV1.tryFromJson(missing), isNull);

    final Map<String, Object?> invalidLineAdvance = withGrid(
      (Map<String, Object?> grid) =>
          grid['lineAdvancePerClientHeight'] = 0.02,
    );
    expect(GalLookupTextLayoutV1.tryFromJson(invalidLineAdvance), isNull);

    final Map<String, Object?> invalidIndent = withGrid(
      (Map<String, Object?> grid) => grid['continuationIndent'] = 9,
    );
    expect(GalLookupTextLayoutV1.tryFromJson(invalidIndent), isNull);
  });

  test('best of multiple variants must be within one-percent aspect error', () {
    final GalLookupSurfaceProfileV1 value = profile(
      variants: <GalLookupSurfaceVariantV1>[
        variant(width: 1280, height: 960),
        variant(width: 1920, height: 1080),
        variant(width: 1600, height: 1000),
      ],
    );
    const GalLookupReferenceClientV1 nearWide = GalLookupReferenceClientV1(
      widthPx: 1770,
      heightPx: 1000,
      dpi: 96,
    );
    expect(
      value.bestVariantForClient(nearWide)?.aspectRatio,
      closeTo(16 / 9, 1e-9),
    );
    expect(
      value.bestVariantForClient(
        const GalLookupReferenceClientV1(
          widthPx: 1700,
          heightPx: 1000,
          dpi: 96,
        ),
      ),
      isNull,
    );
    expect(
      value.bestVariantForClient(
        const GalLookupReferenceClientV1(widthPx: 1280, heightPx: 720, dpi: 96),
      ),
      isNull,
      reason: 'a large same-aspect size jump needs a fresh calibration',
    );
  });

  test(
    'unknown fields, non-finite values, and out-of-bounds rect reject all',
    () {
      final Map<String, Object?> unknown = profile().toJson()
        ..['legacyEnabled'] = true;
      expect(GalLookupSurfaceProfileV1.tryFromJson(unknown), isNull);

      final Map<String, Object?> nonFinite = profile().toJson();
      final List<Object?> variants = nonFinite['variants']! as List<Object?>;
      final Map<String, Object?> first =
          (variants.single! as Map<Object?, Object?>).cast<String, Object?>();
      final Map<String, Object?> layout =
          (first['layout']! as Map<Object?, Object?>).cast<String, Object?>();
      layout['fontSizePerClientHeight'] = double.nan;
      expect(GalLookupSurfaceProfileV1.tryFromJson(nonFinite), isNull);

      final Map<String, Object?> outOfBounds = profile().toJson();
      final Map<String, Object?> variantMap =
          ((outOfBounds['variants']! as List<Object?>).single!
                  as Map<Object?, Object?>)
              .cast<String, Object?>();
      variantMap['bodyRect'] = <String, Object?>{
        'left': 0.8,
        'top': 0.7,
        'width': 0.3,
        'height': 0.4,
      };
      expect(GalLookupSurfaceProfileV1.tryFromJson(outOfBounds), isNull);

      final Map<String, Object?> fractionalSchema = profile().toJson()
        ..['schemaVersion'] = 1.5;
      expect(GalLookupSurfaceProfileV1.tryFromJson(fractionalSchema), isNull);

      final Map<String, Object?> fractionalClient = profile().toJson();
      final Map<String, Object?> client =
          (((fractionalClient['variants']! as List<Object?>).single!
                      as Map<Object?, Object?>)['referenceClient']!
                  as Map<Object?, Object?>)
              .cast<String, Object?>();
      client['widthPx'] = 1920.5;
      expect(GalLookupSurfaceProfileV1.tryFromJson(fractionalClient), isNull);

      final Map<String, Object?> nonStringFont = profile().toJson();
      final Map<String, Object?> fontLayout =
          (((nonStringFont['variants']! as List<Object?>).single!
                      as Map<Object?, Object?>)['layout']!
                  as Map<Object?, Object?>)
              .cast<String, Object?>();
      fontLayout['fontFamily'] = 42;
      expect(GalLookupSurfaceProfileV1.tryFromJson(nonStringFont), isNull);

      // Persisted preferences and MethodChannel payloads are untrusted.  A
      // wrong primitive type must reject the whole profile, never escape as a
      // TypeError that tears down session synchronization.
      final Map<String, Object?> wrongType = profile().toJson();
      final Map<String, Object?> wrongRect =
          (((wrongType['variants']! as List<Object?>).single!
                      as Map<Object?, Object?>)['bodyRect']!
                  as Map<Object?, Object?>)
              .cast<String, Object?>();
      wrongRect['left'] = '0.08';
      expect(
        () => GalLookupSurfaceProfileV1.tryFromJson(wrongType),
        returnsNormally,
      );
      expect(GalLookupSurfaceProfileV1.tryFromJson(wrongType), isNull);
    },
  );
}
