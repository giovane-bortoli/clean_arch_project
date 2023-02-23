import 'package:clean_arch_project/core/client/clean_arch_project_client.dart';
import 'package:clean_arch_project/core/client/clean_arch_project_response.dart';
import 'package:dio/dio.dart' as dio;

class CleanArchDioClientImpl implements CleanArchProjectClient {
  final dio.Dio client;
  final String url;

  CleanArchDioClientImpl({required this.client, required this.url});

  @override
  Future<CleanArchProjectResponse> delete(
    String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? body,
  }) async {
    final response = await client.delete(path,
        data: body,
        options: dio.Options(
          headers: headers,
          validateStatus: (status) => status != null && (status >= 200 && status <= 499),
        ));

    return CleanArchProjectResponse.fromDioResponse(response);
  }

  @override
  Future<CleanArchProjectResponse> get(
    String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? query,
  }) async {
    final response = await client.get(path,
        queryParameters: query,
        options: dio.Options(
          headers: headers,
          validateStatus: (status) => status != null && (status >= 200 && status <= 499),
        ));
    return CleanArchProjectResponse.fromDioResponse(response);
  }

  @override
  Future<CleanArchProjectResponse> post(
    String path, {
    Map<String, String>? headers = const <String, String>{},
    Map<String, dynamic>? body = const <String, String>{},
  }) async {
    final response = await client.post(path,
        data: body,
        options: dio.Options(
          headers: headers,
          validateStatus: (status) => status != null && (status >= 200 && status <= 499),
        ));
    return CleanArchProjectResponse.fromDioResponse(response);
  }

  @override
  Future<CleanArchProjectResponse> put(
    String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? body,
  }) async {
    final response = await client.put(
      path,
      data: body,
      options: dio.Options(
        headers: headers,
        validateStatus: (status) => status != null && (status >= 200 && status <= 499),
      ),
    );
    return CleanArchProjectResponse.fromDioResponse(response);
  }
}
