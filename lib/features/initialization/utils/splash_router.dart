import 'package:clean_arch_project/core/connection/connection_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashRouter {
  final ConnectionService connectionService;
  bool? isConnected;

  SplashRouter({
    required this.connectionService,
  });

  Future<void> route() async {
    await _checkConnection();
    Modular.to.pushNamed('/home-screen');
  }

  Future<void> _checkConnection() async {
    isConnected = await connectionService.isConnected();
  }
}
