import 'dart:async';

import 'package:core_dependencies/core_dependencies.dart';
import 'package:core_network/src/core/utils/http/converters/json_type_parser.dart';

class JsonSerializableConverter extends JsonConverter {
  const JsonSerializableConverter();

  @override
  FutureOr<Response<ResultType>> convertResponse<ResultType, Item>(
      Response response) async {
    final jsonRes = await super.convertResponse(response);
    return response.copyWith<ResultType>(
      body: JsonTypeParser.decode(jsonRes.body),
    );
  }

  @override
  Request convertRequest(Request request) => super.convertRequest(
        request.copyWith(
            // body: serializers.serialize(request.body),
            ),
      );

  @override
  FutureOr<Response> convertError<ResultType, Item>(Response response) async {
    final jsonRes = await super.convertError(response);
    // TODO: swith Item to ResponseErrorCustommodel
    return response.copyWith<ResultType>(
      body: JsonTypeParser.decode<Item>(jsonRes.body),
    );
  }
}
