import 'package:flutter_test/flutter_test.dart';
import 'package:fushi/src/mining/galgame_audio_source.dart';
import 'package:fushi/src/mining/luca_live_text_coalescer.dart';

GalHookedLine _line({
  required int seq,
  required int timestampMs,
  required String text,
  String hookCode = 'HQFN-8*14@7E850:LITBUS_WIN32.exe',
}) {
  return GalHookedLine(
    seq: seq,
    timestampMs: timestampMs,
    text: text,
    sourceKind: 2,
    hookCode: hookCode,
  );
}

void main() {
  test(r'完整 Luca 记录覆盖同一时间点的尾部增量并剥离 $K 控制码', () {
    final LucaLiveTextBatch batch = coalesceLucaLiveText(<GalHookedLine>[
      _line(
        seq: 10,
        timestampMs: 100,
        text:
            '部屋に備え付けのベッド。備え付けだからマットレスと\$K24布団\$K0もある。\n'
            r'$K24布団$K0もある。'
            '\n'
            'The room was already furnished with beds.\n'
            r'$K24futons$K0 were already in the room.',
      ),
      _line(
        seq: 11,
        timestampMs: 100,
        text:
            r'$K0もある。'
            '\n'
            r'$K0 were already in the room.',
      ),
    ]);

    expect(batch.representativesBySequence, hasLength(1));
    expect(
      batch.representativesBySequence[10]!.text,
      '部屋に備え付けのベッド。備え付けだからマットレスと布団もある。',
    );
    expect(batch.representativesBySequence.containsKey(11), isFalse);
  });

  test(r'同时间点的 $d 词典记录连同省略标记的正文旁路一起丢弃', () {
    final LucaLiveTextBatch batch = coalesceLucaLiveText(<GalHookedLine>[
      _line(
        seq: 20,
        timestampMs: 200,
        text:
            '【布団】\$d日本では広く使われる寝具のひとつ。\n'
            'Futon\$dA piece of Japanese furniture.',
      ),
      _line(seq: 21, timestampMs: 200, text: '日本では広く使われる寝具のひとつ。'),
    ]);

    expect(batch.lineSequences, containsAll(<int>[20, 21]));
    expect(batch.representativesBySequence, isEmpty);
  });

  test('同时间点优先无名正文，但没有正文时保留带名字的完整记录', () {
    final LucaLiveTextBatch body = coalesceLucaLiveText(<GalHookedLine>[
      _line(seq: 30, timestampMs: 300, text: '理樹@「了解、了解」'),
      _line(seq: 31, timestampMs: 300, text: '「了解、了解」'),
    ]);
    expect(body.representativesBySequence[31]!.text, '「了解、了解」');

    final LucaLiveTextBatch named = coalesceLucaLiveText(<GalHookedLine>[
      _line(seq: 32, timestampMs: 301, text: '理樹@「了解、了解」'),
    ]);
    expect(named.representativesBySequence[32]!.text, '理樹@「了解、了解」');
  });

  test('不同时间点不互相拼接', () {
    final LucaLiveTextBatch batch = coalesceLucaLiveText(<GalHookedLine>[
      _line(seq: 40, timestampMs: 400, text: '前の台詞'),
      _line(seq: 41, timestampMs: 401, text: '後ろの台詞'),
    ]);
    expect(batch.representativesBySequence.keys, containsAll(<int>[40, 41]));
  });

  test('运行时 HQFN-8*14 原生源和 HQ24 回退面即时发布', () {
    expect(
      isLucaAuthoritativeTextLine(
        _line(
          seq: 45,
          timestampMs: 450,
          hookCode: 'HQFN-8*14@7E850:LITBUS_WIN32.exe',
          text: '「原生日语源」',
        ),
      ),
      isTrue,
    );
    expect(
      isLucaAuthoritativeTextLine(
        _line(
          seq: 46,
          timestampMs: 451,
          hookCode: 'HQ24@91DB0:LITBUS_WIN32.exe',
          text: '理樹@「画面の原文」',
        ),
      ),
      isTrue,
    );
    expect(
      isLucaAuthoritativeTextLine(
        _line(
          seq: 47,
          timestampMs: 451,
          hookCode: 'HQFN-4:-20@750C2:LITBUS_WIN32.exe',
          text: '「回退面」',
        ),
      ),
      isFalse,
    );
  });

  test('角色正文、旁白和完整双语面在同一时间点合并', () {
    final LucaLiveTextBatch batch = coalesceLucaLiveText(<GalHookedLine>[
      _line(
        seq: 50,
        timestampMs: 500,
        hookCode: 'HQFN-4:-20@750C2:LITBUS_WIN32.exe',
        text: '「角色正文」',
      ),
      _line(
        seq: 51,
        timestampMs: 500,
        hookCode: 'HQ24@91DB0:LITBUS_WIN32.exe',
        text: '理樹@「角色正文」\nRiki@❝Role line❞',
      ),
      _line(
        seq: 52,
        timestampMs: 500,
        hookCode: 'HQFN-8*14@7E850:LITBUS_WIN32.exe',
        text: '「角色正文」',
      ),
    ]);

    expect(batch.representativesBySequence, hasLength(1));
    expect(batch.representativesBySequence[50]!.text, '「角色正文」');
  });

  test('并行面跨两个 poll 到达时等待后再选日文代表', () {
    final LucaLiveTextAccumulator accumulator = LucaLiveTextAccumulator(
      settleWindow: const Duration(milliseconds: 50),
    );
    final DateTime t0 = DateTime(2026, 9, 11, 19, 10, 0);
    accumulator.add(<GalHookedLine>[
      _line(
        seq: 60,
        timestampMs: 600,
        hookCode: 'HQFN-4:-20@750C2:LITBUS_WIN32.exe',
        text: '❝English arrived first.❞',
      ),
    ], now: t0);
    expect(
      accumulator
          .takeReady(now: t0.add(const Duration(milliseconds: 49)))
          .representativesBySequence,
      isEmpty,
    );
    accumulator.add(<GalHookedLine>[
      _line(
        seq: 61,
        timestampMs: 600,
        hookCode: 'HQFN-4:-20@750C2:LITBUS_WIN32.exe',
        text: '「日文正文后来到达」',
      ),
    ], now: t0.add(const Duration(milliseconds: 20)));
    final LucaLiveTextBatch batch = accumulator.takeReady(
      now: t0.add(const Duration(milliseconds: 70)),
    );
    expect(batch.representativesBySequence, hasLength(1));
    expect(batch.representativesBySequence[61]!.text, '「日文正文后来到达」');
  });
}
