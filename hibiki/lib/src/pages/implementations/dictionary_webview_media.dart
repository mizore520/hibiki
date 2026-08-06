import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hibiki/src/dictionary/dictionary_media_types.dart';
import 'package:hibiki/src/utils/misc/error_log_service.dart';
import 'package:hibiki_anki/hibiki_anki.dart';
import 'package:hibiki_dictionary/hibiki_dictionary.dart';
import 'package:image/image.dart' as img;
import 'package:path/path.dart' as p;

const List<String> dictionaryMediaCustomSchemes = <String>[
  'image',
  'dictmedia',
];

const String dictionaryMediaWebViewUserDataFolderName =
    'dictionary_popup_webview2';

/// WebView2 requires custom schemes to be registered when its environment is
/// created. The per-WebView interception setting alone is not enough on
/// Windows. Keep this profile separate from other app WebViews because
/// WebView2 rejects different options sharing one user-data folder.
WebViewEnvironmentSettings dictionaryMediaWebViewEnvironmentSettings(
  String appDirectoryPath,
) {
  return WebViewEnvironmentSettings(
    userDataFolder: p.join(
      appDirectoryPath,
      dictionaryMediaWebViewUserDataFolderName,
    ),
    customSchemeRegistrations: dictionaryMediaCustomSchemes
        .map(
          (String scheme) => CustomSchemeRegistration(
            scheme: scheme,
            hasAuthorityComponent: true,
            treatAsSecure: true,
          ),
        )
        .toList(growable: false),
  );
}

typedef DictionaryMediaLoader = Uint8List? Function(
  String dictionary,
  String path,
);

/// Reads natural dimensions for the media listed by a mining payload. The
/// popup can learn raster dimensions from an image load event, but mining can
/// happen before that event. Header-based dimensions keep the export pass
/// consistent for PNG/JPEG/WebP, SVG and AVIF without decoding the whole image
/// in JavaScript.
List<Map<String, Object>> dictionaryMediaNaturalSizes(
  String dictionaryMediaJson, {
  DictionaryMediaLoader? mediaLoader,
}) {
  if (dictionaryMediaJson.isEmpty || dictionaryMediaJson == '[]') {
    return const <Map<String, Object>>[];
  }

  final List<dynamic> entries;
  try {
    entries = jsonDecode(dictionaryMediaJson) as List<dynamic>;
  } catch (_) {
    return const <Map<String, Object>>[];
  }

  final DictionaryMediaLoader? loadMedia = mediaLoader ??
      (HoshiDicts.isInitialized
          ? (String dictionary, String path) =>
              HoshiDicts.instance.getMediaFile(dictionary, path)
          : null);
  if (loadMedia == null) return const <Map<String, Object>>[];

  final List<Map<String, Object>> result = <Map<String, Object>>[];
  for (final dynamic raw in entries) {
    if (raw is! Map) continue;
    final String dictionary = raw['dictionary']?.toString() ?? '';
    final String path = normalizeDictionaryMediaPath(
      raw['path']?.toString() ?? '',
    );
    if (dictionary.isEmpty || path.isEmpty) continue;

    try {
      final Uint8List? bytes = loadMedia(dictionary, path);
      if (bytes == null || bytes.isEmpty) continue;
      final _DictionaryMediaDimensions? dimensions =
          _readDictionaryMediaDimensions(bytes, path);
      if (dimensions == null) continue;
      result.add(<String, Object>{
        'dictionary': dictionary,
        'path': path,
        'width': dimensions.width,
        'height': dimensions.height,
      });
    } catch (e) {
      debugPrint(
          '[DictionaryMedia] size read failed for $dictionary/$path: $e');
    }
  }
  return result;
}

_DictionaryMediaDimensions? _readDictionaryMediaDimensions(
  Uint8List bytes,
  String path,
) {
  if (path.toLowerCase().endsWith('.svg')) {
    return _readSvgDimensions(bytes);
  }
  try {
    final img.Decoder? decoder = img.findDecoderForData(bytes);
    final img.DecodeInfo? info = decoder?.startDecode(bytes);
    if (info != null && info.width > 0 && info.height > 0) {
      return _DictionaryMediaDimensions(info.width, info.height);
    }
  } catch (_) {
    // Some decoders recognize a container but cannot decode its payload. The
    // AVIF header fallback below can still provide a safe aspect ratio.
  }
  if (path.toLowerCase().endsWith('.avif')) {
    return _readAvifDimensions(bytes);
  }
  return null;
}

_DictionaryMediaDimensions? _readSvgDimensions(Uint8List bytes) {
  final String source = utf8.decode(bytes, allowMalformed: true);
  final RegExpMatch? root = RegExp(
    r'<svg\b([^>]*)>',
    caseSensitive: false,
    dotAll: true,
  ).firstMatch(source);
  if (root == null) return null;
  final String attributes = root.group(1) ?? '';

  final double? width = _readSvgPixelLength(attributes, 'width');
  final double? height = _readSvgPixelLength(attributes, 'height');
  if (width != null && height != null) {
    return _roundedSvgDimensions(width, height);
  }

  final String? viewBox = _readSvgAttribute(attributes, 'viewBox');
  if (viewBox == null) return null;
  final List<double> values = RegExp(
    r'[-+]?(?:\d+\.?\d*|\.\d+)(?:[eE][-+]?\d+)?',
  )
      .allMatches(viewBox)
      .map((RegExpMatch match) => double.parse(match.group(0)!))
      .toList(growable: false);
  if (values.length != 4) return null;
  return _roundedSvgDimensions(values[2], values[3]);
}

String? _readSvgAttribute(String attributes, String name) {
  final RegExpMatch? match = RegExp(
    "(?:^|\\s)${RegExp.escape(name)}\\s*=\\s*([\"'])\\s*(.*?)\\s*\\1",
    caseSensitive: false,
    dotAll: true,
  ).firstMatch(attributes);
  return match?.group(2);
}

double? _readSvgPixelLength(String attributes, String name) {
  final String? value = _readSvgAttribute(attributes, name);
  if (value == null || value.endsWith('%')) return null;
  final RegExpMatch? number = RegExp(
    r'^[-+]?(?:\d+\.?\d*|\.\d+)(?:[eE][-+]?\d+)?',
  ).firstMatch(value);
  if (number == null) return null;
  final String unit = value.substring(number.end).trim().toLowerCase();
  if (unit.isNotEmpty && unit != 'px') return null;
  final double parsed = double.parse(number.group(0)!);
  return parsed.isFinite && parsed > 0 ? parsed : null;
}

_DictionaryMediaDimensions? _roundedSvgDimensions(
  double width,
  double height,
) {
  if (!width.isFinite || !height.isFinite || width <= 0 || height <= 0) {
    return null;
  }
  return _DictionaryMediaDimensions(
    width.round().clamp(1, 0x7fffffff),
    height.round().clamp(1, 0x7fffffff),
  );
}

_DictionaryMediaDimensions? _readAvifDimensions(Uint8List bytes) {
  // AVIF is ISO-BMFF. A primary image's dimensions are kept in an `ispe`
  // full box nested below meta/iprp/ipco, so scan boxes rather than assuming a
  // fixed parent layout.
  if (bytes.length < 20 ||
      bytes[4] != 0x66 ||
      bytes[5] != 0x74 ||
      bytes[6] != 0x79 ||
      bytes[7] != 0x70) {
    return null;
  }
  final ByteData data = ByteData.sublistView(bytes);
  for (int typeOffset = 4; typeOffset + 16 <= bytes.length; typeOffset++) {
    if (bytes[typeOffset] != 0x69 ||
        bytes[typeOffset + 1] != 0x73 ||
        bytes[typeOffset + 2] != 0x70 ||
        bytes[typeOffset + 3] != 0x65) {
      continue;
    }
    final int boxOffset = typeOffset - 4;
    final int boxSize = data.getUint32(boxOffset, Endian.big);
    if (boxSize < 20 || boxOffset + boxSize > bytes.length) continue;
    final int width = data.getUint32(typeOffset + 8, Endian.big);
    final int height = data.getUint32(typeOffset + 12, Endian.big);
    if (width > 0 && height > 0) {
      return _DictionaryMediaDimensions(width, height);
    }
  }
  return null;
}

class _DictionaryMediaDimensions {
  const _DictionaryMediaDimensions(this.width, this.height);

  final int width;
  final int height;
}

/// 制卡前把 JS 负载里的词典媒体（gaiji 外字等）字节落盘到 Anki 媒体缓存目录，
/// 供 [BaseAnkiRepository] 的 storeMediaFile 读取嵌进卡片。
///
/// 背景：popup.js 在 `window.embedMedia` 为真时把外字渲染成
/// `<img src="hoshi_dict_N.ext">` 并在负载 `dictionaryMedia`
/// （`[{dictionary, path, filename}]` 的 JSON 串）里登记。两个 Anki repo 从
/// [ankiDictionaryMediaCacheDirPath]/[ankiDictionaryMediaCacheFilename] 读字节再
/// storeMediaFile + 把字段里的 `hoshi_dict_N.ext` 替换成真实媒体引用。**但此前没有
/// 任何地方写这个缓存**（`image://` 服务只把字节喂给页面显示、不落盘），故媒体永远
/// 读不到、外字退化成 alt 文本（明鏡义项序号显示成烂 alt「3分の2」）。本函数补上写缓存
/// 这一环：用 [HoshiDicts.getMediaFile] 取字节、按与 repo 共用的命名写盘。
///
/// 幂等：已存在的缓存文件跳过。HoshiDicts 未初始化 / 字节取不到 / 写盘失败均跳过
/// （该条媒体退回 alt 文本，不阻断制卡）。
///
/// BUG-1265：跳过**必须留痕**。这三条跳过路径以前只有一句不含原因的 debugPrint
/// （甚至直接 `return`），于是「缓存里没有这个文件」在日志里毫无前因；下游 repo 报
/// 「Dictionary media file is missing」时无从判断是词典取不到字节、还是根本没走到
/// 写入方。现在每条跳过都带原因进 [ErrorLogService]（用户上传的报错日志里能看到），
/// 一条媒体一行，只在真出问题时才产生。
Future<void> writeDictionaryMediaCache(String dictionaryMediaJson) async {
  if (dictionaryMediaJson.isEmpty || dictionaryMediaJson == '[]') return;
  final List<dynamic> entries;
  try {
    entries = jsonDecode(dictionaryMediaJson) as List<dynamic>;
  } catch (e, stack) {
    _logDictionaryMediaSkip('payload JSON 解析失败: $e', stack);
    return;
  }
  if (entries.isEmpty) return;

  // 未初始化的判断放在「确实有媒体要写」之后：无媒体时不该产生噪音日志。
  if (!HoshiDicts.isInitialized) {
    _logDictionaryMediaSkip(
      'HoshiDicts 未初始化，${entries.length} 条词典媒体未落盘（卡片将缺外字）',
    );
    return;
  }

  final Directory dir = Directory(ankiDictionaryMediaCacheDirPath());
  try {
    if (!dir.existsSync()) dir.createSync(recursive: true);
  } catch (e, stack) {
    _logDictionaryMediaSkip('缓存目录 ${dir.path} 创建失败: $e', stack);
    return;
  }

  for (final dynamic raw in entries) {
    if (raw is! Map) continue;
    final String dict = raw['dictionary']?.toString() ?? '';
    final String path = raw['path']?.toString() ?? '';
    if (dict.isEmpty || path.isEmpty) {
      _logDictionaryMediaSkip('媒体条目缺 dictionary/path，无法定位字节: $raw');
      continue;
    }
    final File file =
        File('${dir.path}/${ankiDictionaryMediaCacheFilename(dict, path)}');
    if (file.existsSync()) continue; // 幂等：已缓存。
    try {
      final Uint8List? bytes = HoshiDicts.instance.getMediaFile(dict, path);
      if (bytes == null || bytes.isEmpty) {
        // 最常见的一条：词典里取不到这个资源（分卷 MDD 未挂载、资源名对不上、
        // 词典已删除重导）。以前这里连 debugPrint 都没有。
        _logDictionaryMediaSkip('词典「$dict」取不到媒体字节: $path');
        continue;
      }
      await file.writeAsBytes(bytes, flush: true);
    } catch (e, stack) {
      _logDictionaryMediaSkip('写盘失败 $dict/$path: $e', stack);
    }
  }
}

/// 词典媒体落盘跳过的统一留痕口：debugPrint（开发期）+ [ErrorLogService]（随用户
/// 上传的报错日志一起回来）。跳过只降级这一条媒体，不抛、不阻断制卡。
void _logDictionaryMediaSkip(String reason, [StackTrace? stack]) {
  debugPrint('[DictionaryMedia] $reason');
  ErrorLogService.instance.log('DictionaryMedia.cache', reason, stack);
}

WebResourceResponse? dictionaryMediaWebResourceResponse(Uri url) {
  final _DictionaryMediaResponse? response = _dictionaryMediaResponse(url);
  if (response == null) return null;

  return WebResourceResponse(
    contentType: response.contentType,
    contentEncoding: response.contentEncoding,
    statusCode: response.statusCode,
    reasonPhrase: response.reasonPhrase,
    data: response.data,
  );
}

CustomSchemeResponse? dictionaryMediaCustomSchemeResponse(Uri url) {
  final _DictionaryMediaResponse? response = _dictionaryMediaResponse(url);
  if (response == null) return null;

  return CustomSchemeResponse(
    data: response.data,
    contentType: response.contentType,
    contentEncoding: response.contentEncoding ?? 'utf-8',
  );
}

_DictionaryMediaResponse? _dictionaryMediaResponse(Uri url) {
  if (url.scheme == 'image') {
    final String dictName = url.queryParameters['dictionary'] ?? '';
    final String mediaPath = normalizeDictionaryMediaPath(
      url.queryParameters['path'] ?? '',
    );
    if (dictName.isEmpty || mediaPath.isEmpty) {
      return _DictionaryMediaResponse.notFound();
    }
    if (!HoshiDicts.isInitialized) return _DictionaryMediaResponse.notFound();

    try {
      final Uint8List? data = HoshiDicts.instance.getMediaFile(
        dictName,
        mediaPath,
      );
      if (data != null) {
        final String mime = dictionaryMediaMimeType(mediaPath);
        return _DictionaryMediaResponse.ok(
          data: data,
          contentType: mime,
          contentEncoding: mime.startsWith('text/') ? 'utf-8' : null,
        );
      }
    } catch (e) {
      debugPrint('[DictionaryMedia] image error: $e');
    }

    return _DictionaryMediaResponse.notFound();
  }

  if (url.scheme == 'dictmedia') {
    final String dictName = url.queryParameters['dictionary'] ?? '';
    final String mediaPath =
        normalizeDictionaryMediaPath(Uri.decodeComponent(url.host));
    if (dictName.isEmpty || mediaPath.isEmpty) {
      return _DictionaryMediaResponse.notFound();
    }
    if (!HoshiDicts.isInitialized) return _DictionaryMediaResponse.notFound();

    final Uint8List? data = HoshiDicts.instance.getMediaFile(
      dictName,
      mediaPath,
    );
    if (data == null) return _DictionaryMediaResponse.notFound();

    return _DictionaryMediaResponse.ok(
      data: data,
      contentType: 'text/css',
      contentEncoding: 'utf-8',
    );
  }

  return null;
}

class _DictionaryMediaResponse {
  const _DictionaryMediaResponse({
    required this.data,
    required this.contentType,
    required this.statusCode,
    required this.reasonPhrase,
    this.contentEncoding,
  });

  factory _DictionaryMediaResponse.ok({
    required Uint8List data,
    required String contentType,
    String? contentEncoding,
  }) {
    return _DictionaryMediaResponse(
      data: data,
      contentType: contentType,
      contentEncoding: contentEncoding,
      statusCode: 200,
      reasonPhrase: 'OK',
    );
  }

  factory _DictionaryMediaResponse.notFound() {
    return _DictionaryMediaResponse(
      data: Uint8List(0),
      contentType: 'text/plain',
      statusCode: 404,
      reasonPhrase: 'Not Found',
    );
  }

  final Uint8List data;
  final String contentType;
  final String? contentEncoding;
  final int statusCode;
  final String reasonPhrase;
}
