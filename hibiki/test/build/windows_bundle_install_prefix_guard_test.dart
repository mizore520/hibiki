import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Windows bundle install prefix avoids the Program Files default', () {
    final String cmake = File('windows/CMakeLists.txt').readAsStringSync();

    expect(
      cmake,
      contains('set(BUILD_BUNDLE_DIR "\$<TARGET_FILE_DIR:\${BINARY_NAME}>")'),
    );
    expect(
      RegExp(
        r'CMAKE_INSTALL_PREFIX\s+MATCHES\s+"[^\"]*Program Files[^\"]*\$\{BINARY_NAME\}[^\"]*"',
      ).hasMatch(cmake),
      isTrue,
      reason: 'a cached Windows Program Files default must be treated like an '
          'uninitialized prefix',
    );
    expect(
      cmake,
      contains(
        'set(CMAKE_INSTALL_PREFIX "\${BUILD_BUNDLE_DIR}" CACHE PATH "..." FORCE)',
      ),
    );
  });
}
