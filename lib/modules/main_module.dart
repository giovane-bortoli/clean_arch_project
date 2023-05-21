import 'package:clean_arch_project/core/client/clean_arch_project_client.dart';
import 'package:clean_arch_project/core/client/clean_arch_dio_client_impl.dart';
import 'package:clean_arch_project/core/configuration.dart';
import 'package:clean_arch_project/core/connection/connection_service.dart';
import 'package:clean_arch_project/core/connection/connection_service_impl.dart';
import 'package:clean_arch_project/core/storage/hive_storage.dart';
import 'package:clean_arch_project/features/initialization/screens/splash_screen.dart';
import 'package:clean_arch_project/features/list_cats/presentation/screens/cat_details_screen.dart';
import 'package:clean_arch_project/features/list_cats/presentation/screens/home_cat_list_screen.dart';
import 'package:clean_arch_project/modules/cat_module.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';

class MainModule extends Module {
  @override
  List<Module> get imports => [
        CatModule(),
      ];

  @override
  List<Bind> get binds => [
        Bind.singleton<HiveInterface>((i) => Hive),
        Bind.lazySingleton<HiveStorage>((i) => HiveStorage(hive: i())),
        Bind.factory<Connectivity>((i) => Connectivity()),
        Bind.factory<Dio>((i) {
          final dio = Dio(BaseOptions(
            connectTimeout: 5000,
            receiveTimeout: 50000,
          ));

          return dio;
        }),
        Bind.singleton<ConnectionService>(
          (i) => ConnectionServiceImpl(
              domainUrl: Configuration.baseUrl,
              connectivity: i(),
              ipCheckApiUrl: Configuration.ipCheckApi,
              httpClient: i()),
        ),
        Bind.factory<CleanArchProjectClient>((i) => CleanArchDioClientImpl(
              client: i(),
              url: Configuration.baseUrl,
            )),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) => SplashScreen()),
        ChildRoute(
          '/home-screen',
          child: (_, args) => const HomeCatListScreen(),
          transition: TransitionType.leftToRight,
        ),
        ChildRoute(
          '/cat-details',
          child: (context, args) => CatDetailsScreen(args: args.data),
          transition: TransitionType.leftToRight,
        )
      ];
}
