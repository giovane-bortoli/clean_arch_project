import 'package:clean_arch_project/core/connection/connection_service.dart';
import 'package:clean_arch_project/core/errors/exception.dart';
import 'package:clean_arch_project/features/list_cats/data/base/cat_list_data_source.dart';
import 'package:clean_arch_project/features/list_cats/data/base/cat_list_local_data_source.dart';
import 'package:clean_arch_project/features/list_cats/domain/entities/cat_entity.dart';
import 'package:clean_arch_project/core/errors/failure.dart';
import 'package:clean_arch_project/features/list_cats/domain/repositories/cat_repository.dart';
import 'package:dartz/dartz.dart';
import 'dart:developer' as developer;

class CatRepositoryImpl implements CatRepository {
  final CatListDataSource remoteDataSource;
  final CatListLocalDataSource localDataSource;
  final ConnectionService connectionService;

  CatRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.connectionService,
  });

  @override
  Future<Either<Failure, List<CatEntity>>> getCatList() async {
    try {
      if (await connectionService.isConnected()) {
        final remoteList = await remoteDataSource.index();
        developer.inspect('OBTENDO RESULTADOS Remotos: $remoteList.');
        return remoteList.isNotEmpty ? right(remoteList) : left(EmptyFailure());
      } else {
        return right(<CatEntity>[]);
      }
    } on ServerException {
      return left(ServerFailure());
    } on LocalStorageException {
      return left(LocalStorageFailure());
    } on Exception {
      return left(ServerFailure());
    }
  }

  Future<Either<Failure, List<CatEntity>>> getAllLocally() async {
    final localList = await localDataSource.getStored();
    return localList.isNotEmpty ? right(localList) : left(ConnectionFailure());
  }
}
