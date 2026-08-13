import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:fushi_anki/fushi_anki.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// BUG-1593: popup entries dispatch detached duplicate probes in a burst.
/// They must rendezvous across freshly-created repository instances and use a
/// single indexed canAddNotes request instead of N GUI-thread findNotes calls.
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    AnkiConnectRepository.resetDuplicateCheckCooldown();
  });

  tearDown(() {
    AnkiConnectRepository.resetDuplicateCheckCooldown();
  });

  Future<void> seedSettings() async {
    final AnkiSettings settings = AnkiSettings(
      selectedDeckId: 0,
      selectedDeckName: 'Lapis::Mining',
      selectedNoteTypeId: 0,
      selectedNoteTypeName: 'Lapis',
      duplicateScope: AnkiDuplicateScope.deckRoot,
      availableDecks: const <AnkiDeck>[
        AnkiDeck(id: 0, name: 'Lapis::Mining'),
      ],
      availableNoteTypes: const <AnkiNoteType>[
        AnkiNoteType(
          id: 0,
          name: 'Lapis',
          fields: <String>['Expression', 'Reading'],
        ),
      ],
    );
    SharedPreferences.setMockInitialValues(<String, Object>{
      'hoshi_anki_settings': jsonEncode(settings.toJson()),
    });
  }

  test('coalesces and de-duplicates probes across repository instances',
      () async {
    await seedSettings();
    final List<http.Request> issued = <http.Request>[];
    final AnkiConnectService service = AnkiConnectService(
      client: MockClient((http.Request request) async {
        issued.add(request);
        final Map<String, dynamic> body =
            jsonDecode(request.body) as Map<String, dynamic>;
        final List<dynamic> notes =
            (body['params'] as Map<String, dynamic>)['notes'] as List<dynamic>;
        final List<bool> canAdd = notes.map((dynamic rawNote) {
          final Map<String, dynamic> note = rawNote as Map<String, dynamic>;
          final Map<String, dynamic> fields =
              note['fields'] as Map<String, dynamic>;
          return fields['Expression'] != '既存';
        }).toList(growable: false);
        return http.Response(
          jsonEncode(<String, Object?>{'result': canAdd, 'error': null}),
          200,
        );
      }),
    );
    AnkiConnectRepository newRepository() =>
        AnkiConnectRepository(service: service);

    final List<bool> results = await Future.wait(<Future<bool>>[
      newRepository().isDuplicate('既存', 'きそん'),
      newRepository().isDuplicate('新規', 'しんき'),
      newRepository().isDuplicate('既存', 'きそん'),
    ]);

    expect(results, const <bool>[true, false, true]);
    expect(issued, hasLength(1), reason: 'one popup burst = one HTTP request');
    final Map<String, dynamic> body =
        jsonDecode(issued.single.body) as Map<String, dynamic>;
    expect(body['action'], 'canAddNotes');
    final List<dynamic> notes =
        (body['params'] as Map<String, dynamic>)['notes'] as List<dynamic>;
    expect(notes, hasLength(2), reason: 'identical expressions share a probe');
  });

  test('the coalescing delay stays imperceptibly small', () {
    expect(
      AnkiConnectRepository.kDuplicateCheckBatchWindow,
      lessThanOrEqualTo(const Duration(milliseconds: 20)),
    );
    expect(
      AnkiConnectRepository.kDuplicateCheckBatchWindow,
      greaterThan(Duration.zero),
    );
  });

  test('an empty expression is not mistaken for a duplicate', () async {
    await seedSettings();
    var calls = 0;
    final AnkiConnectRepository repository = AnkiConnectRepository(
      service: AnkiConnectService(
        client: MockClient((http.Request request) async {
          calls++;
          return http.Response(
            jsonEncode(<String, Object?>{
              'result': const <bool>[false],
              'error': null,
            }),
            200,
          );
        }),
      ),
    );

    expect(await repository.isDuplicate('', ''), isFalse);
    expect(calls, 0);
  });
}
