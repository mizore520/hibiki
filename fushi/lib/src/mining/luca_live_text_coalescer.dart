import 'package:fushi/src/mining/galgame_audio_source.dart';

/// Little Busters! English Edition 的 Luca 运行时正文源。
///
/// 这些是结构性 Hook 身份，不绑定 EXE 路径、哈希或固定地址。默认路径只装
/// `HQFN-8*14` 运行时 UTF-16 原生源，它比 HQ24 更接近游戏的日语显示文本；HQ24
/// 只在该源解析失败时作为单一 sink 回退。下面的收束器只为多面回退路径保留，
/// 不能反过来把已证明的单一面重新拖进 50ms 合并延迟。
const String kLucaLiveTextHookPrefix = 'HQFN-8*14@';
const List<String> kLucaLiveTextHookPrefixes = <String>[
  kLucaLiveTextHookPrefix,
  // Recognize the immediately preceding no-N candidate for diagnostics and
  // old-session replay, but never treat it as the current authoritative lane.
  'HQF-8*14@',
  'HQFN-4:-20@',
  'HQFN-8@',
  'HQ24@',
];

/// 是否是 Little Busters! English Edition 的 Luca 正文源事件。
///
/// `sourceKind == 2` 是 Luna 写者；其余 Hook 写者即使恰好使用相同的地址形态，
/// 也不应进入这个合并器。
bool isLucaLiveTextLine(GalHookedLine line) {
  return line.eventKind == GalTextEventKind.line &&
      line.sourceKind == 2 &&
      isLucaLiveTextHookCode(line.hookCode);
}

/// English Edition 的首选文本面：由当前进程运行时结构扫描得到的 HQFN-8*14
/// UTF-16 原生源。它不是固定地址，也不是 SCRIPT.PAK 重建；它只表示 LunaHook
/// 当前已经插入的那一个游戏源面。HQ24 是解析失败时的单一 sink 回退。首选面必须
/// 即时发布，避免引入回退合并器的收束延迟。
bool isLucaAuthoritativeTextLine(GalHookedLine line) {
  return isLucaLiveTextLine(line) &&
      (line.hookCode.startsWith('HQFN-8*14@') ||
          line.hookCode.startsWith('HQ24@'));
}

/// 是否是已经经过结构身份识别的 Luca Hook 面。
///
/// 发布层也用这个判据，但只会看到已经由 [coalesceLucaLiveText] 产出的 entry；
/// 因此不会把回退路径的原始兄弟行单独放进工作台。
bool isLucaLiveTextHookCode(String? hookCode) {
  return hookCode != null && kLucaLiveTextHookPrefixes.any(hookCode.startsWith);
}

/// 一组 Luca 原始事件经过同时间点合并后的正文候选。
class LucaLiveTextCandidate {
  const LucaLiveTextCandidate({required this.line, required this.text});

  /// 保留原始事件身份，后续语音配对仍使用游戏给出的时间戳/seq。
  final GalHookedLine line;

  /// 仅是当前候选的呈现文本，不会改写共享内存里的原始事件。
  final String text;
}

/// 一次 poll 中 Luca 事件的合并结果。
class LucaLiveTextBatch {
  const LucaLiveTextBatch({
    required this.lineSequences,
    required this.representativesBySequence,
  });

  /// 本批所有 Luca 正文事件。没有代表的组（例如 `$d` 词典组）应全部消费掉，
  /// 不能再回落到原始尾部，避免同一句重新漏出半截。
  final Set<int> lineSequences;

  /// 只有代表事件的 seq 在这里出现；值是供工作台使用的正文候选。
  final Map<int, LucaLiveTextCandidate> representativesBySequence;
}

/// 跨 native poll 收束 Luca 的同一句。
///
/// 同一时间戳的多个 Hook 回调来自不同线程，可能被两个相邻的 IPC poll 分开看到。
/// 只在单个 poll 内合并会把先到的英文/尾部当成完整台词发布；这里保留一个很短的
/// 收束窗口，等同时间戳不再有新兄弟行后再一次性选择代表。窗口只影响 Luca 结构源，
/// 普通引擎文本仍按原轮询即时发布。
class LucaLiveTextAccumulator {
  LucaLiveTextAccumulator({
    this.settleWindow = const Duration(milliseconds: 50),
  });

  final Duration settleWindow;
  final Map<int, List<GalHookedLine>> _groups = <int, List<GalHookedLine>>{};
  final Map<int, DateTime> _lastSeenAt = <int, DateTime>{};
  final Set<int> _pendingSequences = <int>{};

  void add(Iterable<GalHookedLine> lines, {required DateTime now}) {
    for (final GalHookedLine line in lines) {
      if (!isLucaLiveTextLine(line) || !_pendingSequences.add(line.seq)) {
        continue;
      }
      // 正常 Luca 行都有 GetTickCount64；若异常拿到 0，不把所有异常行
      // 错误合并到同一组，而是让它们各自独立收束。
      final int groupKey = line.timestampMs > 0 ? line.timestampMs : -line.seq;
      _groups.putIfAbsent(groupKey, () => <GalHookedLine>[]).add(line);
      _lastSeenAt[groupKey] = now;
    }
  }

  LucaLiveTextBatch takeReady({required DateTime now}) {
    final List<GalHookedLine> ready = <GalHookedLine>[];
    final List<int> readyKeys = <int>[];
    for (final MapEntry<int, DateTime> entry in _lastSeenAt.entries) {
      if (now.difference(entry.value) >= settleWindow) {
        readyKeys.add(entry.key);
        ready.addAll(_groups[entry.key] ?? const <GalHookedLine>[]);
      }
    }
    for (final int key in readyKeys) {
      final List<GalHookedLine>? group = _groups.remove(key);
      _lastSeenAt.remove(key);
      if (group != null) {
        for (final GalHookedLine line in group) {
          _pendingSequences.remove(line.seq);
        }
      }
    }
    return coalesceLucaLiveText(ready);
  }

  void clear() {
    _groups.clear();
    _lastSeenAt.clear();
    _pendingSequences.clear();
  }
}

/// 把一批同时到达的 Luca 原始事件合并成一条正文。
///
/// 合并键是 `timestampMs`，不是 EXE、路径、固定 RVA 或某一个 Hook 面。当前
/// English Edition 的同一句会跨 `HQF`、`HQFN`、`HQ24` 等面同时出现；只按 family
/// 分组会把角色正文和旁白重新拆开。
LucaLiveTextBatch coalesceLucaLiveText(Iterable<GalHookedLine> lines) {
  final Map<String, List<GalHookedLine>> groups =
      <String, List<GalHookedLine>>{};
  final Set<int> allSequences = <int>{};
  for (final GalHookedLine line in lines) {
    if (!isLucaLiveTextLine(line)) continue;
    allSequences.add(line.seq);
    final String key = line.timestampMs.toString();
    groups.putIfAbsent(key, () => <GalHookedLine>[]).add(line);
  }

  final Map<int, LucaLiveTextCandidate> representatives =
      <int, LucaLiveTextCandidate>{};
  for (final List<GalHookedLine> group in groups.values) {
    // `$d` is Luca's dictionary/definition record. The body-only branch may
    // omit the marker, so the whole same-timestamp group must be discarded.
    if (group.any(
      (GalHookedLine line) => _isLucaDictionaryPayload(line.text),
    )) {
      continue;
    }

    final List<GalHookedLine> candidateLines = <GalHookedLine>[];
    final List<_LucaRecord> candidateRecords = <_LucaRecord>[];
    for (final GalHookedLine line in group) {
      final _LucaRecord? record = _bestLucaRecord(line.text);
      if (record == null) continue;
      candidateLines.add(line);
      candidateRecords.add(record);
    }
    final bool groupHasJapanese = candidateRecords.any(
      (_LucaRecord record) => record.hasJapanese,
    );
    LucaLiveTextCandidate? best;
    int bestScore = -1 << 30;
    for (int i = 0; i < candidateRecords.length; i++) {
      final _LucaRecord record = candidateRecords[i];
      if (groupHasJapanese && !record.hasJapanese) continue;
      final GalHookedLine line = candidateLines[i];
      final int score = _lucaRecordScore(record.text);
      if (best == null ||
          score > bestScore ||
          (score == bestScore && line.seq < best.line.seq)) {
        best = LucaLiveTextCandidate(line: line, text: record.text);
        bestScore = score;
      }
    }
    if (best != null) representatives[best.line.seq] = best;
  }

  return LucaLiveTextBatch(
    lineSequences: allSequences,
    representativesBySequence: representatives,
  );
}

bool _isLucaDictionaryPayload(String text) => text.contains(r'$d');

class _LucaRecord {
  const _LucaRecord(this.text, this.hasJapanese);

  final String text;
  final bool hasJapanese;
}

_LucaRecord? _bestLucaRecord(String text) {
  final List<_LucaRecord> records = <_LucaRecord>[];
  for (final String raw in text.split('\n')) {
    final String normalized = _stripLucaControls(raw.trim());
    if (normalized.isEmpty) continue;
    records.add(_LucaRecord(normalized, _containsJapanese(normalized)));
  }
  if (records.isEmpty) return null;

  final List<_LucaRecord> japanese = records
      .where((_LucaRecord record) => record.hasJapanese)
      .toList();
  final List<_LucaRecord> candidates = japanese.isEmpty ? records : japanese;
  candidates.sort((a, b) {
    final int score = _lucaRecordScore(b.text) - _lucaRecordScore(a.text);
    return score != 0 ? score : b.text.length.compareTo(a.text.length);
  });
  return candidates.first;
}

String _stripLucaControls(String text) {
  // `$K24` / `$K0` are Luca text-box control markers, not dialogue.
  return text.replaceAll(RegExp(r'\$K[0-9A-Za-z]+'), '').trim();
}

bool _containsJapanese(String text) {
  for (final int unit in text.runes) {
    if (unit >= 0x3040 && unit <= 0x30ff || unit >= 0x3400 && unit <= 0x9fff) {
      return true;
    }
  }
  return false;
}

int _lucaRecordScore(String text) {
  int score = text.runes.length;
  // Prefer the no-speaker body when the same timestamp also carries a
  // speaker/backtick aggregate. If no body exists, the named record remains
  // eligible, preserving coverage over purity.
  if (text.contains('@') || text.startsWith('`')) score -= 1000;
  return score;
}
