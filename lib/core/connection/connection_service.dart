abstract class ConnectionService {
  Future<bool> isConnected();
  Future<bool> testConnection();
  Future<bool> testConnectionWithUrl(String url);
  Stream<bool> onConnectionStatusChange();
  Future<String?> getIpAddress();
}
