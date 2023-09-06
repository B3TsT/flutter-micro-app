import 'dart:collection';

import 'package:core_network/src/domain/models/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NetworkCurrenciesResponse', () {
    test('should supports values comparisons', () {
      expect(
        NetworkCurrencyConversionResponse(
          baseCurrencyCode: 'EUR',
          baseCurrencyName: 'Euro',
          amount: '400',
          updatedDate: DateTime.parse('2021-03-05'),
          rates: HashMap.from(
            {
              'BRL': const Rates(
                currencyName: 'Brasilian Real',
                rate: 'BRL',
                rateForAmount: '900',
              ),
            },
          ),
          status: 'success',
        ),
        NetworkCurrencyConversionResponse(
          baseCurrencyCode: 'EUR',
          baseCurrencyName: 'Euro',
          amount: '400',
          updatedDate: DateTime.parse('2021-03-05'),
          rates: HashMap.from(
            {
              'BRL': const Rates(
                currencyName: 'Brasilian Real',
                rate: 'BRL',
                rateForAmount: '900',
              ),
            },
          ),
          status: 'success',
        ),
      );
    });
  });
}
