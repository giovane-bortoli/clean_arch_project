// Dart imports:
import 'dart:io';

// Package imports:
import 'package:clean_arch_project/core/connection/connection_service.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

class ConnectionServiceImpl extends ConnectionService {
  final String domainUrl;

  final Connectivity connectivity;
  final String ipCheckApiUrl;
  final Dio httpClient;

  ConnectionServiceImpl({
    required this.domainUrl,
    required this.connectivity,
    required this.ipCheckApiUrl,
    required this.httpClient,
  });

  @override
  Future<bool> isConnected() async {
    return await connectivity.checkConnectivity() != ConnectivityResult.none;
  }

  @override
  Future<bool> testConnection() => _checkConnection(domainUrl);

  @override
  Future<bool> testConnectionWithUrl(String url) => _checkConnection(url);

  @override
  Future<String?> getIpAddress() async {
    try {
      final result = await httpClient.get(ipCheckApiUrl);
      return result.statusCode == 200 ? result.data : null;
    } catch (_) {
      return null;
    }
  }

  Future<bool> _checkConnection(String url) async {
    try {
      final uri = Uri.parse(url);
      final result = await InternetAddress.lookup(uri.host);
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  @override
  Stream<bool> onConnectionStatusChange() {
    return connectivity.onConnectivityChanged.map((result) {
      return result != ConnectivityResult.none;
    });
  }
}
