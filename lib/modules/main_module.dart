import 'package:clean_arch_project/core/client/clean_arch_project_client.dart';
import 'package:clean_arch_project/core/client/clean_arch_dio_client_impl.dart';
import 'package:clean_arch_project/core/configuration.dart';
import 'package:clean_arch_project/features/initialization/screens/splash_screen.dart';
import 'package:clean_arch_project/features/list_cats/presentation/screens/home_cat_list_screen.dart';
import 'package:clean_arch_project/modules/cat_module.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MainModule extends Module {
  @override
  List<Module> get imports => [
        CatModule(),
      ];

  @override
  List<Bind> get binds => [
        Bind.factory<Dio>((i) {
          final dio = Dio(BaseOptions(
            connectTimeout: 5000,
            receiveTimeout: 50000,
          ));

          return dio;
        }),
        Bind.factory<CleanArchProjectClient>((i) => CleanArchDioClientImpl(
              client: i(),
              url: Configuration.baseUrl,
            )),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) => const SplashScreen()),
        ChildRoute(
          '/home-screen',
          child: (_, args) => const HomeCatListScreen(),
          transition: TransitionType.leftToRight,
        ),
      ];
}
