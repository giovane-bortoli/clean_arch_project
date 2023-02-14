// Package imports:
import 'package:clean_arch_project/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

// Project imports:
abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams {
  const NoParams._internal();
  @override
  String toString() => '()';
}

const NoParams emptyParams = NoParams._internal();
