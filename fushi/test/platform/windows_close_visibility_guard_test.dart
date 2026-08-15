import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  final String runner =
      File('windows/runner/flutter_window.cpp').readAsStringSync();
  final String main = File('lib/main.dart').readAsStringSync();

  group('Windows close visibility guard', () {
    test('hides the main HWND before Flutter/window_manager sees WM_CLOSE', () {
      final int closeGuard = runner.indexOf('if (message == WM_CLOSE)');
      final int hide = runner.indexOf('ShowWindow(hwnd, SW_HIDE)', closeGuard);
      final int flutterDispatch =
          runner.indexOf('HandleTopLevelWindowProc(hwnd, message', closeGuard);

      expect(closeGuard, greaterThanOrEqualTo(0));
      expect(hide, greaterThan(closeGuard));
      expect(flutterDispatch, greaterThan(hide),
          reason: '隐藏必须先于 Flutter/window_manager 分发，但不能消费 WM_CLOSE');
    });

    test('visibility handling cannot replace cleanup or prevent-close', () {
      final int hide = runner.indexOf('ShowWindow(hwnd, SW_HIDE)');
      final int dispatch =
          runner.indexOf('HandleTopLevelWindowProc(hwnd, message', hide);
      expect(dispatch, greaterThan(hide),
          reason: 'ShowWindow 之后必须继续走原有 close 分发链');
      expect(main.contains('windowManager.setPreventClose(true)'), isTrue,
          reason: 'native hide 不得取代 Dart 的 prevent-close 语义');
      expect(main.contains('ExitFlushRegistry.instance.flushAll()'), isTrue);
      expect(main.contains('appModel.closeDatabase()'), isTrue);
      expect(main.contains('platformServices.lifecycle.exitApp()'), isTrue);
      expect(main.contains('_flushAndCloseForLifecycleDetach() async'), isTrue,
          reason: 'detached 生命周期兜底仍必须存在');
    });

    test('ShowWindow failure cannot return before the close dispatch', () {
      final int hide = runner.indexOf('ShowWindow(hwnd, SW_HIDE)');
      final int dispatch =
          runner.indexOf('HandleTopLevelWindowProc(hwnd, message', hide);
      final String closeSnippet = runner.substring(hide, dispatch);
      expect(closeSnippet.contains('return'), isFalse,
          reason: '隐藏是 best-effort 视觉处理，失败不能阻断 prevent-close/flush/exit');
    });

    test('visibility-only guard cannot minimize, focus, or destroy the HWND',
        () {
      final int closeGuard = runner.indexOf('if (message == WM_CLOSE)');
      final int dispatch =
          runner.indexOf('HandleTopLevelWindowProc(hwnd, message', closeGuard);
      final String closePath = runner.substring(closeGuard, dispatch);

      expect(closePath.contains('SW_MINIMIZE'), isFalse);
      expect(closePath.contains('SetForegroundWindow'), isFalse);
      expect(closePath.contains('DestroyWindow'), isFalse);
    });
  });
}
