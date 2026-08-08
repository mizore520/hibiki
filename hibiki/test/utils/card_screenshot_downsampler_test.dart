import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:fushi/src/utils/misc/card_screenshot_downsampler.dart';
import 'package:image/image.dart' as img;

/// TODO-646 守卫：制卡截图降采样。验证纯尺寸计算（只缩不放/等比/长边钉 1000）
/// 与端到端 decode→resize→encode（大图缩到长边 1000、小图原样不动、坏字节保守回退）。
void main() {
  group('computeDownsampledSize', () {
    test('landscape 4K downsamples long edge to 1000', () {
      final size = computeDownsampledSize(width: 3840, height: 2160);
      expect(size, isNotNull);
      expect(size!.width, 1000); // 长边钉 1000
      expect(size.height, 563); // 2160 * (1000/3840) = 562.5 → 563
    });

    test('portrait 1080x1920 pins the (long) height to 1000', () {
      final size = computeDownsampledSize(width: 1080, height: 1920);
      expect(size, isNotNull);
      expect(size!.height, 1000);
      expect(size.width, 563); // 1080 * (1000/1920) = 562.5 → 563
    });

    test('returns null when long edge already <= max (only shrink, never grow)',
        () {
      expect(computeDownsampledSize(width: 1000, height: 600), isNull);
      expect(computeDownsampledSize(width: 640, height: 480), isNull);
    });

    test('returns null for non-positive dimensions', () {
      expect(computeDownsampledSize(width: 0, height: 100), isNull);
      expect(computeDownsampledSize(width: 100, height: -1), isNull);
    });

    test('extreme aspect ratio clamps the short edge to at least 1', () {
      final size = computeDownsampledSize(width: 5000, height: 2);
      expect(size, isNotNull);
      expect(size!.width, 1000);
      expect(size.height, 1); // 2 * (1000/5000) = 0.4 → round 0 → clamp 1
    });

    test('honours a custom maxLongEdge', () {
      final size =
          computeDownsampledSize(width: 2000, height: 1000, maxLongEdge: 500);
      expect(size!.width, 500);
      expect(size.height, 250);
    });
  });

  group('computeFittedScreenshotSize', () {
    test('4K 16:9 fits exactly inside the 1080p box', () {
      final size = computeFittedScreenshotSize(
        width: 3840,
        height: 2160,
        maxWidth: 1920,
        maxHeight: 1080,
      );
      expect(size, (width: 1920, height: 1080));
    });

    test('4:3 and ultrawide images keep their aspect ratio without cropping',
        () {
      expect(
        computeFittedScreenshotSize(
          width: 3840,
          height: 2880,
          maxWidth: 1920,
          maxHeight: 1080,
        ),
        (width: 1440, height: 1080),
      );
      expect(
        computeFittedScreenshotSize(
          width: 3440,
          height: 1440,
          maxWidth: 1920,
          maxHeight: 1080,
        ),
        (width: 1920, height: 804),
      );
    });

    test('small images and original-size mode are never enlarged', () {
      expect(
        computeFittedScreenshotSize(
          width: 1280,
          height: 720,
          maxWidth: 1920,
          maxHeight: 1080,
        ),
        isNull,
      );
      expect(
        computeFittedScreenshotSize(
          width: 3840,
          height: 2160,
          maxWidth: 0,
          maxHeight: 0,
        ),
        isNull,
      );
    });
  });

  group('downsampleCardScreenshot', () {
    Uint8List jpegOf(int width, int height) {
      final img.Image image = img.Image(width: width, height: height);
      img.fill(image, color: img.ColorRgb8(120, 60, 200));
      return img.encodeJpg(image, quality: 90);
    }

    test('shrinks a large screenshot so its long edge is 1000px', () {
      final Uint8List big = jpegOf(2400, 1350);
      final Uint8List out = downsampleCardScreenshot(big);
      final img.Image decoded = img.decodeImage(out)!;
      expect(decoded.width, 1000);
      expect(decoded.height, 563);
      // 降采样后体积更小（同质量、更少像素）。
      expect(out.lengthInBytes, lessThan(big.lengthInBytes));
    });

    test('TODO-757 high-fidelity: maxLongEdge 2000 keeps more pixels', () {
      // 关闭压缩时调用点传高保真档（长边 2000 / 质量 95）。一张长边 2400 的图：
      // 压缩档（默认 1000）缩到 1000；高保真档（2000）只缩到 2000，更清晰。
      final Uint8List big = jpegOf(2400, 1350);
      final img.Image hf = img.decodeImage(
        downsampleCardScreenshot(big, maxLongEdge: 2000, quality: 95),
      )!;
      expect(hf.width, 2000);
      expect(hf.height, 1125); // 1350 * (2000/2400)
      final img.Image compressed = img.decodeImage(
        downsampleCardScreenshot(big),
      )!;
      expect(compressed.width, 1000);
      // 高保真档保留更多像素。
      expect(hf.width, greaterThan(compressed.width));
    });

    test('leaves a small screenshot untouched (returns the same bytes)', () {
      final Uint8List small = jpegOf(800, 450);
      final Uint8List out = downsampleCardScreenshot(small);
      expect(identical(out, small), isTrue);
    });

    test('returns the input unchanged for empty bytes', () {
      final Uint8List empty = Uint8List(0);
      expect(identical(downsampleCardScreenshot(empty), empty), isTrue);
    });

    test('returns the input unchanged for undecodable bytes (no break)', () {
      final Uint8List garbage = Uint8List.fromList(<int>[0, 1, 2, 3, 4]);
      final Uint8List out = downsampleCardScreenshot(garbage);
      // 解码失败保守原样返回，绝不把有效封面替换成空字节。
      expect(identical(out, garbage), isTrue);
    });
  });

  group('downsampleCardScreenshotAsync (BUG-933 后台 isolate 卸载)', () {
    Uint8List jpegOf(int width, int height) {
      final img.Image image = img.Image(width: width, height: height);
      img.fill(image, color: img.ColorRgb8(120, 60, 200));
      return img.encodeJpg(image);
    }

    test('大图后台降采样：长边钉 1000（与同步版语义一致）', () async {
      final Uint8List big = jpegOf(2400, 1350);
      // 卸到后台 isolate 后不再 identical，但内容语义与同步版一致：解码得长边 1000。
      final img.Image decoded =
          img.decodeImage(await downsampleCardScreenshotAsync(big))!;
      expect(decoded.width, 1000);
      expect(decoded.height, 563);
    });

    test('空字节原样返回（同步短路，不起 isolate）', () async {
      final Uint8List empty = Uint8List(0);
      expect(
          identical(await downsampleCardScreenshotAsync(empty), empty), isTrue);
    });

    test('无法解码字节保守回退：内容与入参一致（绝不变空）', () async {
      final Uint8List garbage = Uint8List.fromList(<int>[0, 1, 2, 3, 4]);
      final Uint8List out = await downsampleCardScreenshotAsync(garbage);
      expect(out, orderedEquals(garbage));
    });
  });

  group('encodeCardScreenshotAsJpg (Galgame 独立截图设置)', () {
    Uint8List pngOf(int width, int height) {
      final img.Image image = img.Image(width: width, height: height);
      img.fill(image, color: img.ColorRgb8(80, 140, 220));
      return img.encodePng(image);
    }

    test('1080p preset shrinks a PNG and emits real JPEG bytes', () {
      final Uint8List out = encodeCardScreenshotAsJpg(
        pngOf(2000, 1125),
        maxWidth: 1920,
        maxHeight: 1080,
        quality: 90,
      );
      expect(out.take(3), orderedEquals(<int>[0xff, 0xd8, 0xff]));
      final img.Image decoded = img.decodeImage(out)!;
      expect(decoded.width, 1920);
      expect(decoded.height, 1080);
    });

    test('original and small-image modes still convert PNG to JPEG', () {
      final Uint8List source = pngOf(640, 360);
      for (final ({int width, int height}) box in <({int width, int height})>[
        (width: 0, height: 0),
        (width: 1920, height: 1080),
      ]) {
        final Uint8List out = encodeCardScreenshotAsJpg(
          source,
          maxWidth: box.width,
          maxHeight: box.height,
          quality: 90,
        );
        expect(out.take(3), orderedEquals(<int>[0xff, 0xd8, 0xff]));
        final img.Image decoded = img.decodeImage(out)!;
        expect((decoded.width, decoded.height), (640, 360));
      }
    });
  });
}
