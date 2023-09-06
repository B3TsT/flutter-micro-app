import 'package:core_dependencies/core_dependencies.dart';

import '../../../../common/common.dart';
import '../converters/json_serializable_converter.dart';

class ApiClient extends ChopperClient {
  ApiClient()
      : super(
          baseUrl: Uri.parse(ApiConstants.baseURL),
          converter: const JsonSerializableConverter(),
          interceptors: [
            HttpLoggingInterceptor(),
          ],
          // errorConverter: const JsonConverter(),
          // services: [
          // Inject your services here.
          // ],
        );
}
