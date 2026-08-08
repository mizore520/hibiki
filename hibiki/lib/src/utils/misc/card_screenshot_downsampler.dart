import 'dart:isolate';
import 'dart:typed_data';

import 'package:image/image.dart' as img;

typedef _ScreenshotTargetResolver = ({int width, int height})? Function(
  img.Image decoded,
);

Uint8List _transformCardScreenshot(
  Uint8List bytes, {
  required _ScreenshotTargetResolver targetResolver,
  required int quality,
  required bool encodeWhenUnchanged,
}) {
  if (bytes.isEmpty) return bytes;
  try {
    final img.Image? decoded = img.decodeImage(bytes);
    if (decoded == null) return bytes;
    final ({int width, int height})? target = targetResolver(decoded);
    if (target == null && !encodeWhenUnchanged) return bytes;
    final img.Image output = target == null
        ? decoded
        : img.copyResize(
            decoded,
            width: target.width,
            height: target.height,
          );
    return img.encodeJpg(output, quality: quality);
  } catch (_) {
    return bytes;
  }
}

/// TODO-646 近无损压缩：制卡截图降采样。
///
/// 视频制卡封面在没有 cue GIF 时回退到当前帧截图（media_kit `image/jpeg`，按
/// libmpv 原始解码帧分辨率输出，可能是 1080p / 4K）。Lapis 卡面主图 CSS
/// `max-height:400px`、点图放大灯箱最大 ~1000px，故长边 1000px 已足够清晰，
/// 再大只是浪费媒体库体积。本模块把截图字节解码 → 长边等比缩到 1000px → 重编码
/// 高质量 JPEG（quality 90）。
///
/// 设计要点：
/// - **只缩不放**：长边已 <= [maxLongEdge] 时原样返回入参字节（不解码重编码，
///   避免对小图反复有损转码）。
/// - **解码失败保守回退**：字节非图片 / 解码返回 null 时原样返回入参，绝不让
///   降采样把一张有效截图变成空字节而破坏制卡。
/// - 纯 Dart（`package:image`，无 dart:ui），可在隔离/单测中直接调用，与
///   `epub_edge_matcher.dart` 同范式。

/// 计算等比缩放后的目标尺寸（纯函数，可单测）。
///
/// 返回 `null` 表示无需缩放（长边已 <= [maxLongEdge]，或输入尺寸非法）。
/// 否则返回缩放后的 `(width, height)`，长边恰为 [maxLongEdge]，另一边等比四舍五入
/// 且至少为 1（避免极端宽高比缩成 0）。
({int width, int height})? computeDownsampledSize({
  required int width,
  required int height,
  int maxLongEdge = 1000,
}) {
  if (width <= 0 || height <= 0 || maxLongEdge <= 0) return null;
  final int longEdge = width >= height ? width : height;
  if (longEdge <= maxLongEdge) return null; // 只缩不放。
  final double scale = maxLongEdge / longEdge;
  final int newWidth = (width * scale).round();
  final int newHeight = (height * scale).round();
  return (
    width: newWidth < 1 ? 1 : newWidth,
    height: newHeight < 1 ? 1 : newHeight,
  );
}

/// 把图片等比限制在 [maxWidth] × [maxHeight] 的边界框中（纯函数，可单测）。
///
/// 任一上限为 0 表示该方向不设上限；两个方向都不设上限或图片已在框内时返回 null。
/// 只缩不放、不裁剪、不拉伸，适合把 4K / 超宽屏 Galgame 截图约束到 1080p/720p。
({int width, int height})? computeFittedScreenshotSize({
  required int width,
  required int height,
  required int maxWidth,
  required int maxHeight,
}) {
  if (width <= 0 || height <= 0) return null;
  if (maxWidth <= 0 && maxHeight <= 0) return null;

  double scale = 1;
  if (maxWidth > 0 && width > maxWidth) {
    scale = maxWidth / width;
  }
  if (maxHeight > 0 && height * scale > maxHeight) {
    scale = maxHeight / height;
  }
  if (scale >= 1) return null;

  final int newWidth = (width * scale).round();
  final int newHeight = (height * scale).round();
  return (
    width: newWidth < 1 ? 1 : newWidth,
    height: newHeight < 1 ? 1 : newHeight,
  );
}

/// 把制卡截图 [bytes] 降采样到长边 [maxLongEdge]px，重编码为 JPEG（质量
/// [quality]）。长边已不超限、或解码失败时原样返回 [bytes]（绝不返回空/破坏媒体）。
///
/// TODO-757 压缩开关：默认压缩档（长边 1000px / 质量 90，= TODO-646 现状）。关闭压缩
/// 时调用点传高保真档（长边 2000px / 质量 95）。默认值保持现状，纯函数不读全局偏好。
Uint8List downsampleCardScreenshot(
  Uint8List bytes, {
  int maxLongEdge = 1000,
  int quality = 90,
}) {
  return _transformCardScreenshot(
    bytes,
    targetResolver: (img.Image decoded) => computeDownsampledSize(
      width: decoded.width,
      height: decoded.height,
      maxLongEdge: maxLongEdge,
    ),
    quality: quality,
    encodeWhenUnchanged: false,
  );
}

/// [downsampleCardScreenshot] 的后台 isolate 变体（BUG-933）。
///
/// 根因：制卡封面（libmpv 原始解码帧，可能 1080p/4K）的 `img.decodeImage` +
/// `copyResize`(lanczos) + `encodeJpg` 是纯 Dart CPU 重活，几十到几百 ms；旧代码在
/// **UI isolate** 同步 `await` 这条链（`immersion_mining_engine` / reader 选区插图），
/// 制卡截图那一下明显卡顿/未响应。这里整体卸到后台 isolate（[Isolate.run]，与
/// `encodeClipTextFrameAsJpgAsync` 同范式）：传 [Uint8List] 进、[Uint8List] 出，
/// `package:image` 对象只在后台 isolate 内生灭，UI 线程不再被解码/编码阻塞。
///
/// 语义与同步版一致：小图/无法解码时原样返回入参字节（跨 isolate 拷贝后内容相等，
/// 不再是 `identical`，但绝不返回空/破坏媒体）。
Future<Uint8List> downsampleCardScreenshotAsync(
  Uint8List bytes, {
  int maxLongEdge = 1000,
  int quality = 90,
}) {
  if (bytes.isEmpty) return Future<Uint8List>.value(bytes);
  return Isolate.run<Uint8List>(
    () => downsampleCardScreenshot(
      bytes,
      maxLongEdge: maxLongEdge,
      quality: quality,
    ),
  );
}

/// 把 Galgame 静态截图等比限制到边界框，并统一编码为 JPEG。
///
/// 与 [downsampleCardScreenshot] 不同，即使源图已经小于上限或选择保留原尺寸，也会
/// 重编码为 JPEG，以免 WGC 的原始 PNG 直接进入 Anki。解码失败时仍保守返回原字节，
/// 调用方应据实际文件头保留原扩展名，避免名字与媒体内容不一致。
Uint8List encodeCardScreenshotAsJpg(
  Uint8List bytes, {
  required int maxWidth,
  required int maxHeight,
  int quality = 90,
}) {
  return _transformCardScreenshot(
    bytes,
    targetResolver: (img.Image decoded) => computeFittedScreenshotSize(
      width: decoded.width,
      height: decoded.height,
      maxWidth: maxWidth,
      maxHeight: maxHeight,
    ),
    quality: quality,
    encodeWhenUnchanged: true,
  );
}

/// [encodeCardScreenshotAsJpg] 的后台 isolate 变体，避免 2K/4K 图片处理阻塞 UI。
Future<Uint8List> encodeCardScreenshotAsJpgAsync(
  Uint8List bytes, {
  required int maxWidth,
  required int maxHeight,
  int quality = 90,
}) {
  if (bytes.isEmpty) return Future<Uint8List>.value(bytes);
  return Isolate.run<Uint8List>(
    () => encodeCardScreenshotAsJpg(
      bytes,
      maxWidth: maxWidth,
      maxHeight: maxHeight,
      quality: quality,
    ),
  );
}
