import '../../../../domain/domain.dart';

typedef JsonFactory<T> = T Function(Map<String, dynamic> json);

abstract class JsonTypeParser {
  static Map<Type, JsonFactory> factoryConverters = {
    NetworkCurrenciesResponse: (json) => NetworkCurrenciesResponse.fromJson,
    NetworkCurrencyConversionResponse: (json) =>
        NetworkCurrencyConversionResponse.fromJson,
  };

  static dynamic decode<T>(entity) {
    if (entity is Iterable) return _decodeList<T>(entity);
    if (entity is Map<String, dynamic>) return _decodeMap<T>(entity);
  }

  static List<T> _decodeList<T>(Iterable values) {
    return values
        .where((element) => element != null)
        .map<T>((e) => decode<T>(e))
        .toList();
  }

  static T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonfactory = factoryConverters[T];
    if (jsonfactory == null || jsonfactory is! JsonFactory<T>) {
      throw Exception();
    }
    return jsonfactory(values);
  }
}
