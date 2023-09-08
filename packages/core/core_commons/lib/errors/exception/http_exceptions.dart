class JsonDecodeException implements Exception {
  JsonDecodeException([this.message]);
  final String? message;
}

class ServerException implements Exception {
  ServerException([this.message]);
  final String? message;
}
