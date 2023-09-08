import 'package:core_commons/types/either_types.dart';
import 'package:core_dependencies/core_dependencies.dart';
import 'package:core_dependencies/fpdart_dependencies.dart';

import '../errors/failure/failure.dart';

AsyncEither<T> safeApiCall<T>(Future<Response<T>> Function() callback) async {
  try {
    final response = await callback.call();
    return option(
      response,
      (_) => response.isSuccessful,
    ).match(
      () => const Left(Failure.unexpected()),
      (data) => right(data.body as T),
    );
  } catch (e) {
    return const Left(Failure.unexpected());
  }
}
