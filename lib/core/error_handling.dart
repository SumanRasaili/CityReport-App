import 'package:citytech/core/api_response.dart';
import 'package:dio/dio.dart';

class ErrorHandler {
  Future<String> handleError(DioException error) async {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return 'Connection Timeout';
      case DioExceptionType.receiveTimeout:
        return 'Receive Timeout';
      case DioExceptionType.sendTimeout:
        return 'Send Timeout';
      case DioExceptionType.cancel:
        return 'Request Cancelled';
      case DioExceptionType.badResponse:
        return _handleBadResponse(error.response?.data);
      case DioExceptionType.unknown:
        return 'Unexpected Error Occurred';
      default:
        return 'Something Went Wrong';
    }
  }

  String _handleBadResponse(DioException error) {
    try {
      final apiResponse = ApiResponse.fromJson(error.response?.data);
      return apiResponse.message ?? 'Failed to load Data';
    } catch (e) {
      return 'Failed to parse Data  ${error.response?.statusCode})';
    }
  }
}
