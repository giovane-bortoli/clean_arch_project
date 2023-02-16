import 'package:clean_arch_project/core/utils/keyboard_dismiss.dart';
import 'package:clean_arch_project/modules/main_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DismissKeyboard(
      child: Sizer(
        builder: (context, orientation, deviceType) => ModularApp(
          module: MainModule(),
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Clean Arch Project',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            routerDelegate: Modular.routerDelegate,
          ),
        ),
      ),
    );
  }
}
