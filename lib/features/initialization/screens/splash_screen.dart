import 'package:clean_arch_project/core/connection/connection_service.dart';
import 'package:clean_arch_project/core/storage/hive_storage.dart';
import 'package:clean_arch_project/features/initialization/utils/splash_router.dart';
import 'package:clean_arch_project/modules/main_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class SplashScreen extends StatelessWidget {
  final hiveStorage = Modular.get<HiveStorage>();
  final connectionService = Modular.get<ConnectionService>();
  SplashScreen({Key? key}) : super(key: key);

  Future<void> coreActions() async {
    await Modular.isModuleReady<MainModule>();

    // start local Storage
    await hiveStorage.initAppStorage();
  }

  Future<void> _loadAppSettings() async {
    await coreActions();
    await SplashRouter(
      connectionService: connectionService,
    ).route();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    _loadAppSettings();

    return Scaffold(
      body: Container(
        color: Colors.blue,
      ),
    );
  }
}
