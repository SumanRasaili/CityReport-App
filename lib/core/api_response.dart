class ApiResponse {
  final String? code;
  final String? message;
  final dynamic data;

  ApiResponse({required this.code, required this.message, required this.data});

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(
      code: json['code'],
      message: json['message'],
      data: json['data'],
    );
  }
}
