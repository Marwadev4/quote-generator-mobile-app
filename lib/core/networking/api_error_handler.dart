import 'package:dio/dio.dart';

import 'api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionError:
          return ApiErrorModel(message: "Connection to server failed");
        case DioExceptionType.cancel:
          return ApiErrorModel(message: "Request to the server was cancelled");
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(message: "Connection timeout with the server");
        case DioExceptionType.unknown:
          return ApiErrorModel(
            message:
                "Connection to the server failed due to internet connection",
          );
        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(
            message: "Receive timeout in connection with the server",
          );
        case DioExceptionType.badResponse:
          return _handleError(error.response?.data);
        case DioExceptionType.sendTimeout:
          return ApiErrorModel(
            message: "Send timeout in connection with the server",
          );
        default:
          return ApiErrorModel(message: "Something went wrong");
      }
    } else {
      return ApiErrorModel(message: "Unknown error occurred");
    }
  }
}

ApiErrorModel _handleError(dynamic data) {
  // Handle case where data is null or not a Map
  if (data == null || data is! Map<String, dynamic>) {
    return ApiErrorModel(
      message: "Unknown error occurred",
      code: null,
      errors: null,
    );
  }

  // Safely extract code, handling both string and int types
  dynamic code = data['code'];
  if (code is String) {
    // Try to parse string to int, if fails keep as null
    try {
      code = int.parse(code);
    } catch (e) {
      code = null;
    }
  }

  return ApiErrorModel(
    message: data['message'] ?? "Unknown error occurred",
    code: code,
    errors: data['data'],
  );
}
