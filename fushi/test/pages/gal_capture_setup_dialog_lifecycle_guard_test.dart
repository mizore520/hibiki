import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import '../helpers/source_guard.dart';

void main() {
  final String source = File(
    'lib/src/pages/implementations/gal_capture_setup_dialog.dart',
  ).readAsStringSync();
  final String texthookerSource = File(
    'lib/src/pages/implementations/texthooker_page.dart',
  ).readAsStringSync();

  test('捕获设置弹窗的所有关闭路径收口到一次性 dismiss', () {
    final String code = maskComments(source);
    expect(
      RegExp(r'Navigator\.of\(context\)\.(?:maybePop|pop)\s*\(')
          .allMatches(code)
          .length,
      1,
      reason: '选择成功、状态监听和关闭按钮不能各自 pop，否则会弹掉底层页面',
    );

    final String dismiss = topLevelFunctionBody(source, '_dismissOnce')!;
    final int guard = dismiss.indexOf('if (_dismissRequested) return;');
    final int latch = dismiss.indexOf('_dismissRequested = true;');
    final int pop = dismiss.indexOf('Navigator.of(context).maybePop()');
    expect(guard, greaterThanOrEqualTo(0));
    expect(latch, greaterThan(guard));
    expect(pop, greaterThan(latch));

    expect(
      containsIdentifierCall(
        topLevelFunctionBody(source, '_selectThread')!,
        '_dismissOnce',
      ),
      isTrue,
    );
    expect(
      containsIdentifierCall(
        topLevelFunctionBody(source, '_scheduleAutoClose')!,
        '_dismissOnce',
      ),
      isTrue,
    );
    expect(code.contains('onPressed: _dismissOnce'), isTrue);
  });

  test('音轨试听串行化并以最后一次请求代次裁决', () {
    final String request = topLevelFunctionBody(source, '_requestPreview')!;
    final String toggle = topLevelFunctionBody(source, '_togglePreview')!;
    expect(containsIdentifier(request, '_previewGeneration'), isTrue);
    expect(containsIdentifier(request, '_previewQueue'), isTrue);
    expect(containsIdentifierCall(request, '_togglePreview'), isTrue);
    expect(
      RegExp(r'generation\s*!=\s*_previewGeneration')
          .allMatches(maskCommentsAndStrings(toggle))
          .length,
      greaterThanOrEqualTo(2),
      reason: '导出前后都必须拒绝过期请求，异步逆序返回不能覆盖最后一次点击',
    );
  });

  test('Luna 音频调整按症状拆成两项，并在松手后提交当前游戏设置', () {
    final String code = maskComments(source);
    expect(code, contains('t.game_luna_audio_lead_in'));
    expect(code, contains('t.game_luna_audio_tail_trim'));
    expect(code, contains('t.game_luna_audio_per_game_hint'));
    expect(code, contains('setLunaLoopbackPreRollMs'));
    expect(code, contains('setLunaLoopbackTailTrimMs'));
    expect(
      RegExp(r'onChangeEnd:[\s\S]*?onLunaTimingCommitted\(\)')
          .allMatches(code)
          .length,
      2,
      reason: '两个滑块都只能在松手时提交，拖动过程不能连续写偏好表',
    );
    expect(code, contains('setLunaLoopbackPreRollMs(value.round())'));
    expect(code, contains('setLunaLoopbackTailTrimMs(value.round())'));
    expect(texthookerSource,
        contains('_session.setLunaLoopbackPreRollMs(value.round())'));
    expect(texthookerSource,
        contains('_session.setLunaLoopbackTailTrimMs(value.round())'));
  });

  test('两个 Luna 页面上的两个 Slider 都锁定为 50 ms 步进', () {
    void expectSliderStep(
      String code, {
      required String valueExpression,
      required int max,
      required int divisions,
      required String page,
    }) {
      final RegExp slider = RegExp(
        r'Slider\(\s*value:\s*' +
            RegExp.escape(valueExpression) +
            r'\.toDouble\(\),\s*min:\s*0,\s*max:\s*' +
            max.toString() +
            r',\s*divisions:\s*(\d+),',
      );
      final List<RegExpMatch> matches = slider.allMatches(code).toList();
      expect(matches, hasLength(1), reason: '$page 缺少唯一的 Luna Slider');
      final int actualDivisions = int.parse(matches.single.group(1)!);
      expect(actualDivisions, divisions, reason: '$page 的 divisions 已改变');
      expect(
        actualDivisions * 50,
        max,
        reason: '$page 的 Slider 不再以 50 ms 为一个吸附步长',
      );
    }

    for (final (String page, String code, String prefix)
        in <(String, String, String)>[
      (
        'Gal 捕获设置弹窗',
        source,
        'widget.session',
      ),
      (
        'Hook 工具栏设置',
        texthookerSource,
        '_session',
      ),
    ]) {
      expectSliderStep(
        code,
        valueExpression: '$prefix.lunaLoopbackPreRollMs',
        max: 1000,
        divisions: 20,
        page: '$page·补全本句开头',
      );
      expectSliderStep(
        code,
        valueExpression: '$prefix.lunaLoopbackTailTrimMs',
        max: 1000,
        divisions: 20,
        page: '$page·去掉下句声音',
      );
    }
  });
}
