import 'package:core_dependencies/fpdart_dependencies.dart';

import '../errors/failure/failure.dart';

typedef AsyncEither<T> = Future<Either<Failure, T>>;
typedef SyncEither<T> = Either<Failure, T>;
