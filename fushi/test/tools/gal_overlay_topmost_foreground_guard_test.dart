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
    expect(
        cpp, contains('visible_ = true;\n  StartForegroundTopmostTracking();'));
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
}
