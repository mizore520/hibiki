import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  final String schema =
      File('lib/src/settings/settings_schema_lookup.dart').readAsStringSync();
  final String widget =
      File('lib/src/settings/gal_hook_text_settings.dart').readAsStringSync();

  test('Gal Hook 设置区提供字体族选择与逐 1% 背景不透明度', () {
    expect(schema, contains("id: 'lookup.gal_hook_text_font_family'"));
    expect(schema, contains('GalHookTextFontFamilySetting'));
    expect(schema, contains("id: 'lookup.gal_hook_text_bg_opacity'"));
    expect(schema, contains('divisions: 100'));
    expect(schema, contains('step: 1'));
    expect(schema, contains('setGalHookTextWindowBgOpacity(value / 100)'));
    expect(schema, contains('applyOpacityFromPreferences()'));
  });

  test('字体选择器支持搜索、默认选项和已安装字体列表', () {
    expect(widget, contains('getInstalledFontFamilies()'));
    expect(widget, contains('TextEditingController'));
    expect(widget, contains('t.search_ellipsis'));
    expect(widget, contains("Navigator.of(context).pop('')"));
    expect(widget, contains('Yu Gothic UI'));
    expect(widget, contains('fontFamily: family'));
  });
}
