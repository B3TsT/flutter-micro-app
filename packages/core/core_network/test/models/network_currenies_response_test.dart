import 'package:core_network/src/domain/models/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NetworkCurrenciesResponse', () {
    test('should supports values comparisons', () {
      expect(
        const NetworkCurrenciesResponse(currencies: {}, status: 'success'),
        const NetworkCurrenciesResponse(currencies: {}, status: 'success'),
      );
    });
  });
}
