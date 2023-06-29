import 'package:flutter_test/flutter_test.dart';
import 'package:attendance_app/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('EmployeeActionsViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
