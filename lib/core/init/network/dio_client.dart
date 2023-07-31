import 'package:dio/dio.dart';
import 'package:izmir_test_case/core/constants/api_constants.dart';

class DioClient {
  final Dio _dio;
  final String? baseUrl;
  DioClient({this.baseUrl})
      : _dio = Dio(
          BaseOptions(baseUrl: baseUrl ?? ApiConstants.baseUrl),
        )..interceptors.add(
            LogInterceptor(requestBody: true, responseBody: true),
          );

  /// The function `get` is a Dart asynchronous function that makes an HTTP GET request using the Dio
  /// library and returns the response.
  Future<Response> get({String? path}) async {
    try {
      if (path == null) throw Exception("Path is not be null");
      Response response = await _dio.get(path);
      return response;
    } on DioException {
      rethrow;
    }
  }
}
