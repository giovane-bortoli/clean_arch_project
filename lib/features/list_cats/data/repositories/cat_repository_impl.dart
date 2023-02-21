import 'package:clean_arch_project/core/errors/exception.dart';
import 'package:clean_arch_project/features/list_cats/data/base/cat_list_data_source.dart';
import 'package:clean_arch_project/features/list_cats/domain/entities/cat_entity.dart';
import 'package:clean_arch_project/core/errors/failure.dart';
import 'package:clean_arch_project/features/list_cats/domain/repositories/cat_repository.dart';
import 'package:dartz/dartz.dart';

class CatRepositoryImpl implements CatRepository {
  final CatListDataSource remoteDataSource;

  CatRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<CatEntity>>> getCatList() async {
    try {
      final result = await remoteDataSource.index();
      return right(result);
    } on ServerException {
      return left(ServerFailure());
    } on Exception {
      return left(ServerFailure());
    }
  }
}
