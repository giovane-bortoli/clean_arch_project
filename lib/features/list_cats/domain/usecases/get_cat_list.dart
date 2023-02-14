import 'package:clean_arch_project/core/errors/failure.dart';
import 'package:clean_arch_project/core/usecases/usecase.dart';
import 'package:clean_arch_project/features/list_cats/domain/entities/cat_entity.dart';
import 'package:clean_arch_project/features/list_cats/domain/repositories/cat_repository.dart';
import 'package:dartz/dartz.dart';

class GetCatList extends UseCase<List<CatEntity>, NoParams> {
  final CatRepository repository;

  GetCatList({required this.repository});

  @override
  Future<Either<Failure, List<CatEntity>>> call(NoParams params) {
    return repository.getCatList();
  }
}
