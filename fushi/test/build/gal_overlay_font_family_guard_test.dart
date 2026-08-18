import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  final String native =
      File('windows/runner/floating_lyric_window.cpp').readAsStringSync();
  final String nativeHeader =
      File('windows/runner/floating_lyric_window.h').readAsStringSync();
  final String channel =
      File('lib/src/platform/gal_hook_text_overlay_channel.dart')
          .readAsStringSync();
  final String runner =
      File('windows/runner/flutter_window.cpp').readAsStringSync();

  test('字体族来自 Style，正文和振假名共用同一有效字体并有默认回退', () {
    expect(nativeHeader, contains('std::wstring font_family'));
    expect(native, contains('EffectiveTextFontFamily'));
    expect(native, contains('GetSystemFontCollection'));
    expect(native, contains('FindFamilyName'));
    expect(native, contains('kDefaultTextFontFamily'));
    expect(native, contains('text_font_family.c_str()'));
    expect(native, contains('style_.font_family'));
    expect(
      RegExp(r'text_font_family\.c_str\(\)').allMatches(native).length,
      greaterThanOrEqualTo(2),
      reason: '正文和振假名必须都使用选择的字体族',
    );
  });

  test('工具栏图标仍固定 Segoe UI Symbol，不随台词字体改变', () {
    expect(
      RegExp('Segoe UI Symbol').allMatches(native).length,
      greaterThanOrEqualTo(2),
    );
  });

  test('字体列表由 Windows native channel 提供，样式更新不重建/置顶/抢焦点', () {
    expect(channel, contains("'getInstalledFontFamilies'"));
    expect(channel, contains("'fontFamily': fontFamily"));
    expect(runner, contains('getInstalledFontFamilies'));
    expect(native, contains('UpdateStyle'));
    expect(native, contains('SWP_NOACTIVATE'));
    expect(native, contains('topmost_ ? HWND_TOPMOST : HWND_NOTOPMOST'));
  });

  test('背景只走逐像素 body alpha，文字保留独立 text_color', () {
    expect(native, contains('body_bg = style_.bg_color'));
    expect(native, contains('ColorFromArgb(body_bg)'));
    expect(native, contains('ColorFromArgb(style_.text_color)'));
    expect(native, contains('AlphaFormat = AC_SRC_ALPHA'));
    expect(native, isNot(contains('SetLayeredWindowAttributes')),
        reason: '不能用整窗 LWA_ALPHA 让文字与工具栏一起变淡');
  });
}
