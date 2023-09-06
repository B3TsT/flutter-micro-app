import 'dart:collection';

import 'package:core_dependencies/core_dependencies.dart';

class NetworkCurrencyConversionResponse extends Equatable {
  const NetworkCurrencyConversionResponse({
    required this.baseCurrencyCode,
    required this.baseCurrencyName,
    required this.amount,
    required this.updatedDate,
    required this.rates,
    required this.status,
  });
  final String baseCurrencyCode;
  final String baseCurrencyName;
  final String amount;
  final DateTime updatedDate;
  final HashMap<String, Rates> rates;
  final String status;

  @override
  List<Object?> get props => [
        baseCurrencyCode,
        baseCurrencyName,
        amount,
        updatedDate,
        rates,
        status,
      ];

  factory NetworkCurrencyConversionResponse.fromJson(
      Map<String, dynamic> json) {
    return NetworkCurrencyConversionResponse(
      baseCurrencyCode: json['baseCurrencyCode'] ?? '',
      baseCurrencyName: json['baseCurrencyName'] ?? '',
      amount: json['amount'] ?? '',
      updatedDate: DateTime.fromMillisecondsSinceEpoch(json['updatedDate']),
      rates: HashMap<String, Rates>.from(json['rates'] as Map),
      status: json['status'] ?? '',
    );
  }
}

class Rates extends Equatable {
  const Rates({
    required this.currencyName,
    required this.rate,
    required this.rateForAmount,
  });
  final String currencyName;
  final String rate;
  final String rateForAmount;

  @override
  List<Object?> get props => [currencyName, rate, rateForAmount];

  factory Rates.fromJson(Map<String, dynamic> json) {
    return Rates(
      currencyName: json['currencyName'] ?? '',
      rate: json['rate'] ?? '',
      rateForAmount: json['rateForAmount'] ?? '',
    );
  }
}
