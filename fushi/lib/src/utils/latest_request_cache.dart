import 'package:meta/meta.dart';

@immutable
class LatestRequestResult<V> {
  const LatestRequestResult({required this.value, required this.isLatest});

  final V value;
  final bool isLatest;
}

class LatestRequestCache<K, V> {
  LatestRequestCache({this.maxEntries = 32}) : assert(maxEntries > 0);

  final int maxEntries;
  final Map<K, V> _cache = <K, V>{};
  int _generation = 0;

  Future<LatestRequestResult<V>> load(
    K key,
    Future<V> Function() loader, {
    bool force = false,
  }) async {
    final int generation = ++_generation;
    if (!force && _cache.containsKey(key)) {
      return LatestRequestResult<V>(
        value: _cache[key] as V,
        isLatest: generation == _generation,
      );
    }
    final V value = await loader();
    _cache.remove(key);
    _cache[key] = value;
    while (_cache.length > maxEntries) {
      _cache.remove(_cache.keys.first);
    }
    return LatestRequestResult<V>(
      value: value,
      isLatest: generation == _generation,
    );
  }

  void invalidateCurrent() => ++_generation;
}
