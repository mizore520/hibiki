import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart' as p;

/// 个人 Windows 版本的工具栏图标固定使用 Segoe UI Symbol，不能跟随台词字体。
///
/// 作者版会从打包的 Material Symbols 子集取私用区码位；个人版为了延续
/// 既有 Hook 浮窗观感，两个工具栏宿主都固定用系统符号字体，上一句 / 下一句
/// 再逐槽回退到矢量图标。这个守卫防止合并时只拿到作者的码位表、却仍用
/// Segoe 渲染，从而在真机出现豆腐块。
void main() {
  test('SlotGlyph 与两个工具栏宿主继续使用 Segoe UI Symbol', () {
    final String toolbar = File(
      p.join('windows', 'runner', 'hook_toolbar_window.cpp'),
    ).readAsStringSync();
    final String window = File(
      p.join('windows', 'runner', 'floating_lyric_window.cpp'),
    ).readAsStringSync();

    expect(
      RegExp(r'L"Segoe UI Symbol"').allMatches('$toolbar\n$window').length,
      2,
      reason: '正文内工具栏与穿透逃生工具栏都必须固定使用 Segoe UI Symbol',
    );

    final int start = toolbar.indexOf('const wchar_t* SlotGlyph');
    expect(start, greaterThan(0), reason: '找不到 SlotGlyph 定义');
    final int end = toolbar.indexOf('\n}', start);
    expect(end, greaterThan(start));
    final String body = toolbar.substring(start, end);

    expect(
      RegExp(r'L"\\u[EF][0-9A-Fa-f]{3}"').hasMatch(body),
      isFalse,
      reason: 'Segoe UI Symbol 渲染路径不得混入 Material Symbols 私用区码位',
    );
    expect(body.contains(r'return L"\U0001F4CC";'), isTrue);
    expect(
      body.contains(r'return L"";'),
      isTrue,
      reason: '缺少稳定系统字形的槽位必须显式回退到矢量画法',
    );
    expect(toolbar.contains('void DrawSlotIcon('), isTrue);
  });
}
