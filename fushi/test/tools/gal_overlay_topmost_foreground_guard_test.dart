import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  final String cpp =
      File('windows/runner/floating_lyric_window.cpp').readAsStringSync();
  final String header =
      File('windows/runner/floating_lyric_window.h').readAsStringSync();

  test('gal overlay tracks foreground changes without polling or activation',
      () {
    expect(cpp, contains('EVENT_SYSTEM_FOREGROUND'));
    expect(cpp, contains('SetWinEventHook('));
    expect(cpp, contains('WINEVENT_OUTOFCONTEXT | WINEVENT_SKIPOWNPROCESS'));
    expect(cpp, contains('PostMessageW(target, kReassertTopmostMessage'));
    expect(cpp, isNot(contains('SetTimer(hwnd_, kReassertTopmostMessage')));
    expect(header, contains('void StartForegroundTopmostTracking();'));
    expect(header, contains('void StopForegroundTopmostTracking();'));
  });

  test('foreground callback preserves pin intent and game focus', () {
    expect(
      cpp,
      contains('if (hook_text_mode_ && visible_ && topmost_)'),
      reason: 'Unpinned or hidden overlays must never be raised.',
    );
    expect(
      cpp,
      contains('topmost_ ? HWND_TOPMOST : HWND_NOTOPMOST'),
      reason: 'The existing pin state remains the single Z-order authority.',
    );
    expect(
      cpp,
      contains('SWP_NOMOVE | SWP_NOSIZE | SWP_NOACTIVATE'),
      reason: 'Reasserting topmost must not steal focus from the game.',
    );
  });

  test('foreground hook follows overlay visibility lifecycle', () {
    final int visible = cpp.indexOf('visible_ = true;');
    final int start = cpp.indexOf('StartForegroundTopmostTracking();', visible);
    expect(visible, greaterThanOrEqualTo(0));
    expect(start, greaterThan(visible));
    expect(
        cpp,
        contains(
            'void FloatingLyricWindow::Hide() {\n  StopForegroundTopmostTracking();'));
    expect(
        cpp,
        contains(
            'FloatingLyricWindow::~FloatingLyricWindow() {\n  StopForegroundTopmostTracking();'));
    expect(cpp, contains('UnhookWinEvent(g_foreground_event_hook)'));
  });

  test('Magpie 输出生命周期事件补上前台 HWND 不变时的恢复机会', () {
    expect(
      header,
      contains('void NotifyExternalWindowLifecycle(HWND external_window);'),
    );
    expect(
      cpp,
      contains('external_topmost_reassert_pending_'),
      reason: 'Magpie 位置/尺寸事件必须合并，不能变成高频 SetWindowPos 轮询',
    );
    expect(
      cpp,
      contains('PostMessageW(hwnd_, kReassertTopmostMessage, 0, 0)'),
      reason: '外部窗口生命周期通知必须回到浮窗自己的消息线程',
    );
    expect(
      cpp,
      contains(
          'if (external_window == nullptr || hwnd_ == nullptr || !hook_text_mode_ ||'),
      reason: '无输出窗口、非 Hook 窗口、隐藏或未置顶时不得恢复',
    );
  });

  test('Magpie 广播只桥接有输出 HWND 的已知生命周期状态', () {
    final String flutter =
        File('windows/runner/flutter_window.cpp').readAsStringSync();
    final int begin =
        flutter.indexOf('void FlutterWindow::NotifyMagpieScalingChanged(');
    final int end =
        flutter.indexOf('void FlutterWindow::NotifySystemColorChanged', begin);
    expect(begin, greaterThanOrEqualTo(0));
    expect(end, greaterThan(begin));
    final String notifySource = flutter.substring(begin, end);
    expect(notifySource, contains('lparam != 0'));
    expect(
      notifySource,
      contains('(wparam == 0 || wparam == 1 || wparam == 2 || wparam == 3)'),
    );
    expect(
      notifySource,
      contains('gal_hook_text_window_->NotifyExternalWindowLifecycle'),
      reason: '已有 MagpieScalingChanged 通道不能只更新 Dart 状态而漏掉 Hook 浮窗',
    );
  });

  test('Magpie 生命周期恢复保留不抢焦点和取消置顶守卫', () {
    expect(cpp, contains('SWP_NOMOVE | SWP_NOSIZE | SWP_NOACTIVATE'));
    expect(cpp, contains('if (hook_text_mode_ && visible_ && topmost_)'));
    expect(
        cpp,
        contains(
            'SetWindowPos(hwnd_, topmost_ ? HWND_TOPMOST : HWND_NOTOPMOST'));
    expect(cpp, contains('StopForegroundTopmostTracking();'));
    expect(cpp, contains('UnhookWinEvent(g_foreground_event_hook)'));
  });
}
