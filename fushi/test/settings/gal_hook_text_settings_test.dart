import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  final String schema = File(
    'lib/src/settings/settings_schema_game.dart',
  ).readAsStringSync();
  final String widget = File(
    'lib/src/settings/gal_hook_text_settings.dart',
  ).readAsStringSync();

  test('Gal Hook 设置区提供字体族选择与逐 1% 背景不透明度', () {
    expect(schema, contains("id: 'game.gal_hook_text_font'"));
    expect(schema, contains('CustomFontsPage(target: FontTarget.gameLookup)'));
    expect(schema, contains("id: 'game.gal_hook_text_background_opacity'"));
    expect(schema, contains('label: (double value) =>'));
    expect(
      schema,
      contains(
        'setGalHookTextBackgroundOpacity(\n'
        '                    value / 100,\n'
        '                  )',
      ),
    );
    expect(schema, contains('applyAppearanceFromPreferences()'));
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
