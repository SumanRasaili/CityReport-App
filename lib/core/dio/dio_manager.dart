import 'package:citytech/constants/url_constants.dart';
import 'package:dio/dio.dart';

class DioManager {
   late final  Dio _dio;

  void setUpDio() {
    _dio = Dio(BaseOptions(
      baseUrl: UrlConstants.BASE_URL,
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

  Dio get dio => _dio;
}
