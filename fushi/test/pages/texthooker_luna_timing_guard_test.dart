import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Luna 两个语音切分滑杆保持 0..1000ms 且每格 50ms', () {
    final String source = File(
      'lib/src/pages/implementations/texthooker_page.dart',
    ).readAsStringSync();
    final int start = source.indexOf('_showLunaAudioTimingDialog');
    final int end = source.indexOf('\n  Widget ', start);
    expect(start, greaterThanOrEqualTo(0));
    expect(end, greaterThan(start));
    final String dialog = source.substring(start, end);

    expect(RegExp(r'min: 0,').allMatches(dialog), hasLength(2));
    expect(RegExp(r'max: 1000,').allMatches(dialog), hasLength(2));
    expect(
      RegExp(r'divisions: 20,').allMatches(dialog),
      hasLength(2),
      reason: '1000ms / 20 = 50ms；两个滑杆必须保持相同步进',
    );
    expect(
      RegExp(r'persistLunaLoopbackTiming\(\)').allMatches(dialog),
      hasLength(2),
      reason: '两项都必须继续走当前 exe 的同一套持久化逻辑',
    );
  });
}
