import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import 'clean_arch_project_app.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await setupLibraries();
  runApp(const CleanArchProjectApp());
}

Future<void> setupLibraries() async {
  final dir = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(dir.path);
}
