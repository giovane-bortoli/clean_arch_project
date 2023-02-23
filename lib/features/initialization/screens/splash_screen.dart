import 'package:clean_arch_project/modules/main_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  Future<void> coreActions() async {
    await Modular.isModuleReady<MainModule>();
  }

  Future<void> _loadAppSettings() async {
    await coreActions();

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
