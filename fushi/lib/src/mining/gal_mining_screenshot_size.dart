/// Galgame 制卡静态截图的独立尺寸档。
///
/// 与视频/动漫的动图清晰度分开保存：Gal 截图通常来自 2K/4K 游戏窗口，原始 PNG
/// 体积远大于短 AVIF/GIF。三个档位都在写入 Anki 前转为质量 90 的 JPEG；这里仅负责
/// 尺寸上限。`0 × 0` 表示保留源尺寸（仍会转 JPEG）。
enum GalMiningScreenshotSize {
  original('original', 0, 0),
  fullHd('full_hd', 1920, 1080),
  hd('hd', 1280, 720);

  const GalMiningScreenshotSize(this.wireName, this.maxWidth, this.maxHeight);

  final String wireName;
  final int maxWidth;
  final int maxHeight;

  static GalMiningScreenshotSize fromWireName(String? value) {
    for (final GalMiningScreenshotSize size in values) {
      if (size.wireName == value) return size;
    }
    return GalMiningScreenshotSize.fullHd;
  }
}
