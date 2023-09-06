import 'package:core_dependencies/core_dependencies.dart';

class NetworkCurrenciesResponse extends Equatable {
  const NetworkCurrenciesResponse({
    required this.currencies,
    required this.status,
  });
  final Map<String, String> currencies;
  final String status;

  @override
  List<Object?> get props => [currencies, status];

  factory NetworkCurrenciesResponse.fromJson(Map<String, dynamic> json) {
    return NetworkCurrenciesResponse(
      currencies: Map<String, String>.from(json['currencies'] as Map),
      status: json['status'] ?? '',
    );
  }
}
