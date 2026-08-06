import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:hibiki/src/dictionary/dictionary_media_types.dart';
import 'package:hibiki/src/pages/implementations/dictionary_webview_media.dart';

void main() {
  group('dictionaryMediaWebResourceResponse', () {
    test('returns 404 for malformed image scheme before dictionary init', () {
      final response = dictionaryMediaWebResourceResponse(
        Uri.parse('image://media?dictionary=Dict'),
      );

      expect(response, isNotNull);
      expect(response!.statusCode, 404);
      expect(response.contentType, 'text/plain');
      expect(response.data, isEmpty);
    });

    test('returns 404 for malformed dictmedia scheme before dictionary init',
        () {
      final response = dictionaryMediaWebResourceResponse(
        Uri.parse('dictmedia://styles.css'),
      );

      expect(response, isNotNull);
      expect(response!.statusCode, 404);
      expect(response.contentType, 'text/plain');
      expect(response.data, isEmpty);
    });
  });

  group('dictionaryMediaCustomSchemeResponse', () {
    test('handles malformed image scheme before dictionary init', () {
      final response = dictionaryMediaCustomSchemeResponse(
        Uri.parse('image://media?dictionary=Dict'),
      );

      expect(response, isNotNull);
      expect(response!.contentType, 'text/plain');
      expect(response.contentEncoding, 'utf-8');
      expect(response.data, isEmpty);
    });

    test('handles malformed dictmedia scheme before dictionary init', () {
      final response = dictionaryMediaCustomSchemeResponse(
        Uri.parse('dictmedia://styles.css'),
      );

      expect(response, isNotNull);
      expect(response!.contentType, 'text/plain');
      expect(response.contentEncoding, 'utf-8');
      expect(response.data, isEmpty);
    });
  });

  group('dictionaryMediaNaturalSizes', () {
    test('reads SVG viewBox and AVIF ispe dimensions with normalized paths',
        () {
      final Uint8List svg = Uint8List.fromList(utf8.encode(
        '<svg viewBox="0 0 30 20" xmlns="http://www.w3.org/2000/svg"></svg>',
      ));
      final Uint8List avif = Uint8List(40);
      avif.setRange(4, 8, <int>[0x66, 0x74, 0x79, 0x70]);
      final ByteData avifData = ByteData.sublistView(avif);
      avifData.setUint32(20, 20, Endian.big);
      avif.setRange(24, 28, <int>[0x69, 0x73, 0x70, 0x65]);
      avifData.setUint32(32, 640, Endian.big);
      avifData.setUint32(36, 360, Endian.big);

      final Map<String, Uint8List> media = <String, Uint8List>{
        'svg/icon.svg': svg,
        'images/photo.avif': avif,
      };
      final List<Map<String, Object>> sizes = dictionaryMediaNaturalSizes(
        jsonEncode(<Map<String, String>>[
          <String, String>{
            'dictionary': 'Dict',
            'path': './svg\\icon.svg',
          },
          <String, String>{
            'dictionary': 'Dict',
            'path': '/images/photo.avif',
          },
        ]),
        mediaLoader: (String dictionary, String path) => media[path],
      );

      expect(sizes, <Map<String, Object>>[
        <String, Object>{
          'dictionary': 'Dict',
          'path': 'svg/icon.svg',
          'width': 30,
          'height': 20,
        },
        <String, Object>{
          'dictionary': 'Dict',
          'path': 'images/photo.avif',
          'width': 640,
          'height': 360,
        },
      ]);
    });

    test('skips malformed, missing and unsupported media without throwing', () {
      final List<Map<String, Object>> sizes = dictionaryMediaNaturalSizes(
        jsonEncode(<Object?>[
          <String, String>{'dictionary': 'Dict', 'path': 'missing.png'},
          <String, String>{'dictionary': 'Dict', 'path': 'broken.bin'},
          'not-a-map',
        ]),
        mediaLoader: (String dictionary, String path) =>
            Uint8List.fromList(<int>[1, 2, 3]),
      );
      expect(sizes, isEmpty);
    });
  });

  test('dictionary media MIME table includes AVIF and SVG', () {
    expect(dictionaryMediaMimeType('img/photo.avif'), 'image/avif');
    expect(dictionaryMediaMimeType('img/glyph.svg'), 'image/svg+xml');
  });
}
