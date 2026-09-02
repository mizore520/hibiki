import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

/// WebVideoFushiPage 使用 InAppWebView 平台视图，鼠标/滚轮事件不会稳定地经过
/// Flutter Listener；这里锁住它必须同时安装共享鼠标桥和方向精确的滚轮桥。
void main() {
  final String source = File(
    'lib/src/pages/implementations/web_video_fushi_page.dart',
  ).readAsStringSync();

  test('网页视频页把鼠标按键交给共享 WebView bridge', () {
    expect(source, contains('installMouseListeners: true'));
    expect(source, contains('allowPrimaryMouse: true'));
    expect(source, contains('_videoMouseButtons()'));
    expect(source, contains('kWebVideoKeyBridgeHandler'));
  });

  test('网页视频页安装可热更新的滚轮 bridge，并由 registry 二次核验', () {
    expect(source, contains('kWebVideoWheelBridgeHandler'));
    expect(source, contains('window.__fushiWebVideoWheelBindings'));
    expect(source, contains('resolveWheel('));
    expect(source, contains('_refreshWebVideoShortcutBindings()'));
  });
}
