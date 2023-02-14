import 'package:clean_arch_project/core/errors/failure.dart';
import 'package:clean_arch_project/features/list_cats/domain/entities/cat_entity.dart';
import 'package:dartz/dartz.dart';

abstract class CatRepository {
  Future<Either<Failure, List<CatEntity>>> getCatList();
}
