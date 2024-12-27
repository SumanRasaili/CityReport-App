import 'package:citytech/constants/url_constants.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  ApiService(this._dio);
  Future<Map<String, dynamic>> fetchPapTransactionReport() async {
    final response = await _dio.post(UrlConstants.PAP_REPORT);
    return response.data;
  }

  Future<Map<String, dynamic>> fetchOutletReport() async {
    final response = await _dio.post(UrlConstants.OUTLET_REPORT);
    return response.data;
  }
}
