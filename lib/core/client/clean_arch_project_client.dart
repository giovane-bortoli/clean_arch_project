import 'package:clean_arch_project/core/client/clean_arch_project_response.dart';

abstract class CleanArchProjectClient {
  Future<CleanArchProjectResponse> get(
    String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? query,
  });
  Future<CleanArchProjectResponse> post(
    String path, {
    Map<String, String> headers,
    Map<String, dynamic> body,
  });

  Future<CleanArchProjectResponse> put(
    String path, {
    Map<String, String> headers,
    Map<String, dynamic> body,
  });
  Future<CleanArchProjectResponse> delete(
    String path, {
    Map<String, String> headers,
    Map<String, dynamic> body,
  });
}
