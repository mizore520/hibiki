import 'package:flutter_test/flutter_test.dart';
import 'package:fushi/src/media/video/video_player_controller.dart';
import 'package:fushi/src/media/video/video_subtitle_language_filter.dart';
import 'package:fushi_audio/fushi_audio.dart';

AudioCue _cue(String text, int startMs, int endMs, {String? style}) {
  return AudioCue()
    ..bookKey = 'video/test'
    ..chapterHref = 'video'
    ..sentenceIndex = startMs + text.length
    ..textFragmentId = '#cue'
    ..text = text
    ..startMs = startMs
    ..endMs = endMs
    ..audioFileIndex = 0
    ..markup = SubtitleMarkup(
      plainText: text,
      spans: const <SubtitleSpan>[],
      assStyleName: style,
    );
}

void main() {
  test('ASS style metadata filters paired Japanese and Chinese events', () {
    final List<AudioCue> raw = <AudioCue>[
      _cue('わっ 何これ', 1000, 2000, style: 'Liz jp'),
      _cue('哇 这是什么', 1000, 2000, style: 'Liz ch'),
      _cue('きれい', 3000, 4000, style: 'dialogue-ja'),
      _cue('真漂亮', 3000, 4000, style: 'dialogue-zh'),
    ];

    expect(
      filterVideoSubtitleCues(raw, VideoSubtitleLanguageFilter.japanese)
          .map((AudioCue cue) => cue.text),
      <String>['わっ 何これ', 'きれい'],
    );
    expect(
      filterVideoSubtitleCues(raw, VideoSubtitleLanguageFilter.chinese)
          .map((AudioCue cue) => cue.text),
      <String>['哇 这是什么', '真漂亮'],
    );
    expect(raw, hasLength(4));
  });

  test('text and exact time pairing are conservative fallbacks', () {
    final List<AudioCue> raw = <AudioCue>[
      _cue('めっちゃ青い', 1000, 2000),
      _cue('好蓝啊', 1000, 2000),
      _cue('TITLE', 1000, 2000),
      _cue('日本', 3000, 4000),
    ];

    // Three simultaneous events are not blindly paired; unknown title/effect is retained.
    expect(
      filterVideoSubtitleCues(raw, VideoSubtitleLanguageFilter.japanese)
          .map((AudioCue cue) => cue.text),
      containsAll(<String>['めっちゃ青い', '好蓝啊', 'TITLE', '日本']),
    );
  });

  test('ambiguous all-kanji track stays visible in both language modes', () {
    final List<AudioCue> raw = <AudioCue>[
      _cue('日本', 1000, 2000),
      _cue('水面', 3000, 4000),
    ];

    expect(
      filterVideoSubtitleCues(raw, VideoSubtitleLanguageFilter.japanese),
      hasLength(2),
    );
    expect(
      filterVideoSubtitleCues(raw, VideoSubtitleLanguageFilter.chinese),
      hasLength(2),
    );
  });

  test('single-event hard line break can keep only the requested language', () {
    final AudioCue bilingual = _cue('何これ 哇 这是什么', 1000, 2000)
      ..markup = const SubtitleMarkup(
        plainText: '何これ 哇 这是什么',
        spans: <SubtitleSpan>[],
        lineBreakGraphemes: <int>[3],
      );

    final AudioCue japanese = filterVideoSubtitleCues(
      <AudioCue>[bilingual],
      VideoSubtitleLanguageFilter.japanese,
    ).single;
    final AudioCue chinese = filterVideoSubtitleCues(
      <AudioCue>[bilingual],
      VideoSubtitleLanguageFilter.chinese,
    ).single;
    expect(japanese.text, '何これ');
    expect(chinese.text, '哇 这是什么');
    expect(bilingual.text, '何これ 哇 这是什么');
  });

  test('controller exposes one effective cue stream and restores raw cues', () {
    final VideoPlayerController controller = VideoPlayerController();
    final List<AudioCue> raw = <AudioCue>[
      _cue('きれい', 1000, 2000, style: 'jp'),
      _cue('真漂亮', 1000, 2000, style: 'ch'),
    ];
    controller.setCues(raw);
    controller.setSubtitleLanguageFilter(
      VideoSubtitleLanguageFilter.japanese,
    );
    expect(controller.cues.map((AudioCue cue) => cue.text), <String>['きれい']);
    expect(controller.rawCues, hasLength(2));

    controller.setSubtitleLanguageFilter(VideoSubtitleLanguageFilter.all);
    expect(controller.cues, hasLength(2));
    expect(raw, hasLength(2));
    controller.dispose();
  });

  test('ASS parser preserves Style and Name metadata for filtering', () {
    const String ass = '''
[V4+ Styles]
Format: Name, Fontname, Fontsize
Style: Liz jp,Arial,40
[Events]
Format: Layer, Start, End, Style, Name, MarginL, MarginR, MarginV, Effect, Text
Dialogue: 0,0:00:01.00,0:00:02.00,Liz jp,正文,0,0,0,,何これ, 本当？
''';
    final AudioCue cue = AssParser.parseString(
      content: ass,
      bookKey: 'video/test',
    ).single;
    expect(cue.text, '何これ, 本当？');
    expect(cue.markup?.assStyleName, 'Liz jp');
    expect(cue.markup?.assActorName, '正文');
  });
}
