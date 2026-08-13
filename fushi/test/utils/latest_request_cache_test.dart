import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:fushi/src/utils/latest_request_cache.dart';

void main() {
  test('a slow old request cannot replace the latest selection', () async {
    final LatestRequestCache<String, String> cache =
        LatestRequestCache<String, String>();
    final Completer<String> old = Completer<String>();
    final Completer<String> latest = Completer<String>();

    final Future<LatestRequestResult<String>> oldResult =
        cache.load('old', () => old.future);
    final Future<LatestRequestResult<String>> latestResult =
        cache.load('latest', () => latest.future);

    latest.complete('latest tracks');
    expect((await latestResult).isLatest, isTrue);
    old.complete('old tracks');
    expect((await oldResult).isLatest, isFalse);
  });

  test('returning to a recent selection uses its cached result', () async {
    final LatestRequestCache<String, String> cache =
        LatestRequestCache<String, String>();
    int loads = 0;

    await cache.load('line', () async => 'tracks ${++loads}');
    final LatestRequestResult<String> result =
        await cache.load('line', () async => 'tracks ${++loads}');

    expect(result.value, 'tracks 1');
    expect(loads, 1);
  });
}
