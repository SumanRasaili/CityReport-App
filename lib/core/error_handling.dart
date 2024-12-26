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
        return _handleBadResponse(error.response?.statusCode);
      case DioExceptionType.unknown:
        return 'Unexpected Error Occurred';
      default:
        return 'Something Went Wrong';
    }
  }
}

String _handleBadResponse(int? statusCode) {
  switch (statusCode) {
    case 400:
      return 'Bad Request';
    case 401:
      return 'Unauthorized';
    case 403:
      return 'Forbidden';
    case 404:
      return 'Not Found';
    case 500:
      return 'Internal Server Error';
    default:
      return 'Unexpected Error (Code: $statusCode)';
  }
}
