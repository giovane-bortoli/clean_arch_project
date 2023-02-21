import 'package:clean_arch_project/core/store/status_store.dart';
import 'package:clean_arch_project/features/list_cats/data/base/cat_list_data_source.dart';
import 'package:clean_arch_project/features/list_cats/data/data_sources/cat_list_data_source_impl.dart';
import 'package:clean_arch_project/features/list_cats/data/repositories/cat_repository_impl.dart';
import 'package:clean_arch_project/features/list_cats/domain/repositories/cat_repository.dart';
import 'package:clean_arch_project/features/list_cats/domain/usecases/get_cat_list.dart';
import 'package:clean_arch_project/features/list_cats/presentation/stores/cat_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CatModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.factory<CatListDataSource>((i) => CatListDataSourceImpl(client: i()), export: true),
        Bind.factory<CatRepository>((i) => CatRepositoryImpl(remoteDataSource: i()), export: true),
        Bind.factory<GetCatList>((i) => GetCatList(repository: i()), export: true),
        Bind.factory<StatusStore>((i) => StatusStore(), export: true),
        Bind.factory<CatStore>((i) => CatStore(getCatList: i()), export: true),
      ];
}
