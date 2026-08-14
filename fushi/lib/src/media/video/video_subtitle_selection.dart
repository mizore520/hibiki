import 'package:fushi_audio/fushi_audio.dart';

/// 字幕列表制卡多选的稳定身份。双语 ASS 的中日 Event 通常共享 startMs，故不能再只用
/// 起点标识，否则点一条会把另一语言一起选中。
typedef VideoSubtitleCueKey = ({
  int startMs,
  int endMs,
  int sentenceIndex,
  String text,
});

VideoSubtitleCueKey videoSubtitleCueKey(AudioCue cue) => (
      startMs: cue.startMs,
      endMs: cue.endMs,
      sentenceIndex: cue.sentenceIndex,
      text: cue.text,
    );

AudioCue? buildSelectedSubtitleCueContext({
  required List<AudioCue> cues,
  Set<VideoSubtitleCueKey>? selectedCueKeys,
  Set<int>? selectedStartMs,
}) {
  assert(selectedCueKeys != null || selectedStartMs != null);
  if (cues.isEmpty ||
      ((selectedCueKeys?.isEmpty ?? true) &&
          (selectedStartMs?.isEmpty ?? true))) {
    return null;
  }

  final List<AudioCue> selected = cues.where((AudioCue cue) {
    if (selectedCueKeys != null) {
      return selectedCueKeys.contains(videoSubtitleCueKey(cue));
    }
    return selectedStartMs!.contains(cue.startMs);
  }).toList(growable: false);
  if (selected.isEmpty) return null;
  if (selected.length == 1) return selected.first;

  return AudioCue()
    ..startMs = selected.first.startMs
    ..endMs = selected.last.endMs
    ..text = selected
        .map((AudioCue cue) => cue.text.trim())
        .where((String text) => text.isNotEmpty)
        .join('\n');
}
