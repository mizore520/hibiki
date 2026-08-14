import 'package:characters/characters.dart';
import 'package:flutter/foundation.dart';
import 'package:fushi_audio/fushi_audio.dart';

/// 当前字幕轨内部的运行时语言过滤。原始 cue 永远保留在播放器控制器中；切回 [all]
/// 会从原始列表重建，不修改字幕文件或数据库缓存。
enum VideoSubtitleLanguageFilter { all, japanese, chinese }

extension VideoSubtitleLanguageFilterStorage on VideoSubtitleLanguageFilter {
  String get storageValue => name;

  static VideoSubtitleLanguageFilter fromStorage(String? raw) {
    return VideoSubtitleLanguageFilter.values.firstWhere(
      (VideoSubtitleLanguageFilter value) => value.name == raw,
      orElse: () => VideoSubtitleLanguageFilter.all,
    );
  }
}

enum _CueLanguage { japanese, chinese, unknown }

final RegExp _kana = RegExp(r'[\u3040-\u30ff\u31f0-\u31ff]');
final RegExp _han = RegExp(r'[\u3400-\u4dbf\u4e00-\u9fff\uf900-\ufaff]');

// 只作为正向证据，不声称覆盖所有中文。这里没有“出现汉字=中文”的错误假设。
final RegExp _chineseSpecific = RegExp(
  r'[这还没让为么吗们说话时会来里后个与门见听边过种样对从进开关无发经给只应该点着于气实觉张东车书爱头现国台湾裏麼嗎們說話時會來後與門見聽邊過種樣對從進開關無發經給隻應該點著於氣實覺張東車書愛頭現國臺灣]',
);

/// 对 [source] 建立一次轨级语言证据，再返回过滤后的新列表。
///
/// 不确定内容（片名、英文、拟声符号、无法可靠判断的纯汉字短句）在单语言模式下也保留，
/// 这是刻意的 fail-safe：宁可留下少量无法判断的字幕，也不静默删掉用户正文。
List<AudioCue> filterVideoSubtitleCues(
  List<AudioCue> source,
  VideoSubtitleLanguageFilter filter,
) {
  if (filter == VideoSubtitleLanguageFilter.all || source.isEmpty) {
    return List<AudioCue>.of(source);
  }

  final List<_CueLanguage> languages = <_CueLanguage>[
    for (final AudioCue cue in source) _classifyCueDirect(cue),
  ];

  // 同一时间窗内，已确认的假名日文旁若有另一条不同文本的纯汉字 cue，可把后者确认
  // 为中文；反向同理。只在恰好两条正文时补证据，避免片尾特效的 3/5 层同时间组误配。
  final Map<(int, int), List<int>> byWindow = <(int, int), List<int>>{};
  for (int i = 0; i < source.length; i++) {
    byWindow.putIfAbsent(
        (source[i].startMs, source[i].endMs), () => <int>[]).add(i);
  }
  for (final List<int> indices in byWindow.values) {
    if (indices.length != 2) continue;
    final int a = indices[0];
    final int b = indices[1];
    if (source[a].text == source[b].text) continue;
    if (languages[a] == _CueLanguage.japanese &&
        languages[b] == _CueLanguage.unknown &&
        _han.hasMatch(source[b].text)) {
      languages[b] = _CueLanguage.chinese;
    } else if (languages[b] == _CueLanguage.japanese &&
        languages[a] == _CueLanguage.unknown &&
        _han.hasMatch(source[a].text)) {
      languages[a] = _CueLanguage.chinese;
    } else if (languages[a] == _CueLanguage.chinese &&
        languages[b] == _CueLanguage.unknown &&
        _kana.hasMatch(source[b].text)) {
      languages[b] = _CueLanguage.japanese;
    } else if (languages[b] == _CueLanguage.chinese &&
        languages[a] == _CueLanguage.unknown &&
        _kana.hasMatch(source[a].text)) {
      languages[a] = _CueLanguage.japanese;
    }
  }

  final bool hasJapanese = languages.contains(_CueLanguage.japanese);
  final bool hasChinese = languages.contains(_CueLanguage.chinese);
  if (!(hasJapanese && hasChinese)) {
    // 单语轨级兜底：有假名而无中文证据时，纯汉字短句属于同一日文轨；已有中文
    // 正向证据且无日文证据时同理。双语证据已成立时不做这一步，未配对纯汉字保持 unknown。
    final _CueLanguage? inherited = hasJapanese && !hasChinese
        ? _CueLanguage.japanese
        : (hasChinese && !hasJapanese ? _CueLanguage.chinese : null);
    if (inherited != null) {
      for (int i = 0; i < source.length; i++) {
        if (languages[i] == _CueLanguage.unknown &&
            _han.hasMatch(source[i].text)) {
          languages[i] = inherited;
        }
      }
    }
  }

  final _CueLanguage wanted = filter == VideoSubtitleLanguageFilter.japanese
      ? _CueLanguage.japanese
      : _CueLanguage.chinese;
  final List<AudioCue> result = <AudioCue>[];
  for (int i = 0; i < source.length; i++) {
    final AudioCue cue = source[i];
    final AudioCue? lineFiltered = _filterMultilineCue(cue, wanted);
    if (lineFiltered != null &&
        (languages[i] == wanted ||
            languages[i] == _CueLanguage.unknown ||
            !identical(lineFiltered, cue))) {
      result.add(lineFiltered);
    }
  }
  return result;
}

_CueLanguage _classifyCueDirect(AudioCue cue) {
  final SubtitleMarkup? markup = cue.markup;
  final _CueLanguage metadata = _languageFromMetadata(
    '${markup?.assStyleName ?? ''} ${markup?.assActorName ?? ''}',
  );
  if (metadata != _CueLanguage.unknown) return metadata;

  final List<String> lines = _cueLines(cue);
  final Set<_CueLanguage> known = lines
      .map(_languageFromText)
      .where((_CueLanguage value) => value != _CueLanguage.unknown)
      .toSet();
  return known.length == 1 ? known.single : _CueLanguage.unknown;
}

_CueLanguage _languageFromMetadata(String raw) {
  final Set<String> tokens = raw
      .toLowerCase()
      .split(RegExp(r'[^a-z0-9\u4e00-\u9fff]+'))
      .where((String token) => token.isNotEmpty)
      .toSet();
  if (tokens.any(const <String>{
    'ja',
    'jp',
    'jpn',
    'japanese',
    'nihongo',
    '日',
    '日文',
    '日语',
    '日語'
  }.contains)) {
    return _CueLanguage.japanese;
  }
  if (tokens.any(const <String>{
    'zh',
    'zho',
    'chi',
    'ch',
    'chs',
    'cht',
    'sc',
    'tc',
    'cn',
    'chinese',
    '中文',
    '中',
    '简',
    '簡',
    '繁'
  }.contains)) {
    return _CueLanguage.chinese;
  }
  return _CueLanguage.unknown;
}

_CueLanguage _languageFromText(String text) {
  if (_kana.hasMatch(text)) return _CueLanguage.japanese;
  if (_chineseSpecific.hasMatch(text)) return _CueLanguage.chinese;
  return _CueLanguage.unknown;
}

List<String> _cueLines(AudioCue cue) {
  final List<String> graphemes = cue.text.characters.toList();
  final List<int> breaks = cue.markup?.lineBreakGraphemes ?? const <int>[];
  if (breaks.isEmpty) return <String>[cue.text];
  final List<String> lines = <String>[];
  int start = 0;
  for (final int end in breaks) {
    if (end >= start && end <= graphemes.length) {
      lines.add(graphemes.sublist(start, end).join());
      start = end + 1;
    }
  }
  lines.add(graphemes.sublist(start.clamp(0, graphemes.length)).join());
  return lines;
}

AudioCue? _filterMultilineCue(AudioCue cue, _CueLanguage wanted) {
  final SubtitleMarkup? markup = cue.markup;
  final List<int> breaks = markup?.lineBreakGraphemes ?? const <int>[];
  if (markup == null || breaks.isEmpty) {
    final _CueLanguage language = _classifyCueDirect(cue);
    return language == wanted || language == _CueLanguage.unknown ? cue : null;
  }

  final List<String> chars = cue.text.characters.toList();
  final List<(int, int)> ranges = <(int, int)>[];
  int start = 0;
  for (final int end in breaks) {
    if (end >= start && end <= chars.length) ranges.add((start, end));
    start = end + 1;
  }
  ranges.add((start.clamp(0, chars.length), chars.length));

  final _CueLanguage metadata = _languageFromMetadata(
    '${markup.assStyleName ?? ''} ${markup.assActorName ?? ''}',
  );
  final List<(int, int)> kept = <(int, int)>[];
  for (final (int lineStart, int lineEnd) in ranges) {
    final _CueLanguage direct =
        _languageFromText(chars.sublist(lineStart, lineEnd).join());
    final _CueLanguage lineLanguage =
        direct == _CueLanguage.unknown ? metadata : direct;
    if (lineLanguage == wanted || lineLanguage == _CueLanguage.unknown) {
      kept.add((lineStart, lineEnd));
    }
  }
  if (kept.isEmpty) return null;
  if (kept.length == ranges.length) return cue;
  return _copyCueWithRanges(cue, kept);
}

AudioCue _copyCueWithRanges(AudioCue cue, List<(int, int)> ranges) {
  final SubtitleMarkup markup = cue.markup!;
  final List<String> chars = cue.text.characters.toList();
  final StringBuffer text = StringBuffer();
  final List<int> newBreaks = <int>[];
  final Map<int, int> oldToNew = <int, int>{};
  int newIndex = 0;
  for (int r = 0; r < ranges.length; r++) {
    if (r > 0) {
      newBreaks.add(newIndex);
      text.write(' ');
      newIndex++;
    }
    final (int start, int end) = ranges[r];
    for (int old = start; old < end; old++) {
      oldToNew[old] = newIndex++;
      text.write(chars[old]);
    }
  }

  final List<SubtitleSpan> spans = <SubtitleSpan>[];
  for (final SubtitleSpan span in markup.spans) {
    for (final (int start, int end) in ranges) {
      final int from = start > span.startGrapheme ? start : span.startGrapheme;
      final int to = end < span.endGrapheme ? end : span.endGrapheme;
      if (from >= to) continue;
      spans.add(SubtitleSpan(
        startGrapheme: oldToNew[from]!,
        endGrapheme: oldToNew[to - 1]! + 1,
        italic: span.italic,
        bold: span.bold,
        underline: span.underline,
        strike: span.strike,
        colorArgb: span.colorArgb,
        fontSizePx: span.fontSizePx,
        fontName: span.fontName,
        outlineColorArgb: span.outlineColorArgb,
        shadowColorArgb: span.shadowColorArgb,
        outlineWidthPx: span.outlineWidthPx,
        shadowDepthPx: span.shadowDepthPx,
        blur: span.blur,
        fillOpacity: span.fillOpacity,
        letterSpacingPx: span.letterSpacingPx,
        scaleX: span.scaleX,
        scaleY: span.scaleY,
        kMode: span.kMode,
        kStartCs: span.kStartCs,
        kDurCs: span.kDurCs,
      ));
    }
  }

  final SubtitleMarkup filteredMarkup = SubtitleMarkup(
    plainText: text.toString(),
    spans: spans,
    anchor: markup.anchor,
    posFraction: markup.posFraction,
    cueStyle: markup.cueStyle,
    assStyleName: markup.assStyleName,
    assActorName: markup.assActorName,
    playResY: markup.playResY,
    playResX: markup.playResX,
    lineBreakGraphemes: newBreaks,
    fade: markup.fade,
    rotationDeg: markup.rotationDeg,
    scale: markup.scale,
    move: markup.move,
    layer: markup.layer,
    clip: markup.clip,
    transitions: markup.transitions,
    rotationXDeg: markup.rotationXDeg,
    rotationYDeg: markup.rotationYDeg,
    shearX: markup.shearX,
    shearY: markup.shearY,
  );
  return AudioCue()
    ..id = cue.id
    ..bookKey = cue.bookKey
    ..chapterHref = cue.chapterHref
    ..sentenceIndex = cue.sentenceIndex
    ..textFragmentId = cue.textFragmentId
    ..text = filteredMarkup.plainText
    ..startMs = cue.startMs
    ..endMs = cue.endMs
    ..audioFileIndex = cue.audioFileIndex
    ..markup = filteredMarkup;
}

@visibleForTesting
String? debugVideoSubtitleAssStyleName(AudioCue cue) =>
    cue.markup?.assStyleName;
