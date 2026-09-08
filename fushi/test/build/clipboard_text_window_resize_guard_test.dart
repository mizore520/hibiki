// 透明文字窗 resize 守卫：该窗口是 runner 自有的 Win32 分层窗，不能由 Dart
// widget 测试直接执行，因此把右下角命中、尺寸回调和固定字号契约锁在源码层。
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  final String cpp = File(
    'windows/runner/floating_lyric_window.cpp',
  ).readAsStringSync();
  final String header = File(
    'windows/runner/floating_lyric_window.h',
  ).readAsStringSync();
  final String flutterWindow = File(
    'windows/runner/flutter_window.cpp',
  ).readAsStringSync();
  final String floatingLyricChannel = File(
    'lib/src/media/audiobook/floating_lyric_channel.dart',
  ).readAsStringSync();

  test('透明文字窗使用现有右下角系统 resize 机制和尺寸边界', () {
    expect(cpp.contains('case WM_NCHITTEST'), isTrue);
    expect(cpp.contains('HTBOTTOMRIGHT'), isTrue);
    expect(cpp.contains('case WM_GETMINMAXINFO'), isTrue);
    expect(cpp.contains('case WM_SIZE'), isTrue);
    expect(cpp.contains('SyncStripSizeFromWindow'), isTrue);
    expect(
      cpp.contains('(text_only_ && !hook_text_mode_) || locked_'),
      isFalse,
      reason: 'text-only 模式不能再被旧的「无 resize grip」条件挡住',
    );
    expect(header.contains('SetBoundsCallback'), isTrue);
    expect(cpp.contains('NotifyBoundsChanged'), isTrue);
  });

  test('透明文字窗尺寸随窗口矩形回传并接入 Dart 持久化通道', () {
    expect(header.contains('BoundsCallback'), isTrue);
    expect(cpp.contains('NotifyBoundsChanged'), isTrue);
    expect(
      flutterWindow.contains('floating_lyric_window_->SetBoundsCallback'),
      isTrue,
    );
    expect(flutterWindow.contains('"windowRectChanged"'), isTrue);
    expect(floatingLyricChannel.contains("case 'windowRectChanged':"), isTrue);
    expect(
      floatingLyricChannel.contains(
        '_onBoundsChanged?.call(left, top, width, height);',
      ),
      isTrue,
    );
  });
  test('透明文字窗 resize 不按窗口高度自动放大字号，并按宽度换行', () {
    expect(cpp.contains('(hook_text_mode_ || text_only_)'), isTrue);
    expect(
      cpp.contains('DWRITE_WORD_WRAPPING_WRAP'),
      isTrue,
      reason: '透明文字窗宽度变化必须重新计算可用文本区域',
    );
    expect(
      cpp.contains('(hook_text_mode_ || text_only_)\n          ? 1.0f'),
      isTrue,
      reason: '文字窗宽高变化不能偷偷改变字号',
    );
  });

  test('样式尺寸同时支持宽和高，旧的零值仍保留默认尺寸', () {
    expect(cpp.contains('style_.window_height'), isTrue);
    expect(cpp.contains('void FloatingLyricWindow::ApplyStyleSize()'), isTrue);
    expect(
      cpp.contains('style_.window_width <= 0.0 && style_.window_height <= 0.0'),
      isTrue,
    );
  });
}
