import 'package:clean_arch_project/core/client/clean_arch_project_client.dart';
import 'package:clean_arch_project/core/client/clean_arch_project_client_impl.dart';
import 'package:clean_arch_project/core/configuration.dart';
import 'package:clean_arch_project/features/list_cats/data/base/cat_list_data_source.dart';
import 'package:clean_arch_project/features/list_cats/data/data_sources/cat_list_data_source_impl.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../features/presentations/home_cat_list_screen.dart';

class MainModule extends Module {
  @override
  List<Module> get imports => [];

  @override
  List<Bind> get binds => [
        Bind.factory<CleanArchProjectClient>((i) => CleanArchProjectClientImpl(
              client: i(),
              url: Configuration.baseUrl,
            )),
        Bind.factory<CatListDataSource>(
            (i) => CatListDataSourceImpl(client: i()))
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) => const HomeCatListScreen()),
      ];
}
