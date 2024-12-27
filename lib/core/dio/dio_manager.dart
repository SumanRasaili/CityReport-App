import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DioManager {
  DioManager() {
    setUpDio();
  }
  late final Dio _dio;
  Dio get dio => _dio;

  void setUpDio() {
    _dio = Dio(BaseOptions(
      baseUrl: dotenv.get('BASE_URL'),
      connectTimeout: Duration(seconds: 20),
      receiveTimeout: Duration(seconds: 20),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ));
    _dio.interceptors.add(
      LogInterceptor(
        responseBody: true,
        request: true,
        error: true,
        requestBody: true,
      ),
    );
  }
}
