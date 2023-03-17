import 'package:flutter_modular/flutter_modular.dart';

class SplashRouter {
  Future<void> route() async {
    Modular.to.pushNamed('/home-screen');
  }
}
