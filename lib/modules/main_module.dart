import 'package:clean_arch_project/core/client/clean_arch_project_client.dart';
import 'package:clean_arch_project/core/client/clean_arch_project_client_impl.dart';
import 'package:clean_arch_project/core/configuration.dart';
import 'package:clean_arch_project/modules/cat_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../features/list_cats/presentation/screens/home_cat_list_screen.dart';

class MainModule extends Module {
  @override
  List<Module> get imports => [
        CatModule(),
      ];

  @override
  List<Bind> get binds => [
        Bind.factory<CleanArchProjectClient>((i) => CleanArchProjectClientImpl(
              client: i(),
              url: Configuration.baseUrl,
            )),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) => const HomeCatListScreen()),
      ];
}
