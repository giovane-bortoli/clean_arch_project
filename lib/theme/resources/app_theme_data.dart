import 'package:flutter/material.dart';

class AppThemeData {
  static ThemeData materialTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
    );
  }
}
