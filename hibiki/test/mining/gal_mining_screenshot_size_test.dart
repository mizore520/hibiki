import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:fushi/src/mining/gal_mining_screenshot_size.dart';

void main() {
  test('wire values are stable and unknown values default to 1080p', () {
    expect(
      GalMiningScreenshotSize.fromWireName('original'),
      GalMiningScreenshotSize.original,
    );
    expect(
      GalMiningScreenshotSize.fromWireName('hd'),
      GalMiningScreenshotSize.hd,
    );
    expect(
      GalMiningScreenshotSize.fromWireName(null),
      GalMiningScreenshotSize.fullHd,
    );
    expect(
      GalMiningScreenshotSize.fromWireName('future-value'),
      GalMiningScreenshotSize.fullHd,
    );
    expect(
      (
        GalMiningScreenshotSize.fullHd.maxWidth,
        GalMiningScreenshotSize.fullHd.maxHeight
      ),
      (1920, 1080),
    );
    expect(
      (
        GalMiningScreenshotSize.hd.maxWidth,
        GalMiningScreenshotSize.hd.maxHeight
      ),
      (1280, 720),
    );
    expect(
      (
        GalMiningScreenshotSize.original.maxWidth,
        GalMiningScreenshotSize.original.maxHeight
      ),
      (0, 0),
    );
  });

  test('both Gal mining entry points pass the independent preference', () {
    for (final String path in <String>[
      'lib/src/pages/implementations/texthooker_page.dart',
      'lib/src/lookup/gal_hook_text_overlay_controller.dart',
    ]) {
      final String source = File(path).readAsStringSync();
      expect(source, contains('screenshotSize:'));
      expect(source, contains('.galMiningScreenshotSize'));
    }
  });
}
