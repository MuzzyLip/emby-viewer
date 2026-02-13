import 'package:dio/dio.dart';

import 'package:emby_viwer/core/error/app_exception.dart';

class ResponseInterceptor extends Interceptor {
  ResponseInterceptor();

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    final body = response.data;
    if (body is Map<String, dynamic> && body.containsKey('data')) {
      response.data = body['data'];
    }
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    NetworkException exception = _convertDioErrorToNetworkException(err);
    handler.reject(
      DioException(
        requestOptions: err.requestOptions,
        error: exception,
        type: err.type,
        message: exception.message,
      ),
    );
  }

  NetworkException _convertDioErrorToNetworkException(DioException e) {
    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.receiveTimeout ||
        e.type == DioExceptionType.sendTimeout) {
      return NetworkException(-1, "Request timeout");
    } else if (e.type == DioExceptionType.badCertificate) {
      return NetworkException(
        -4,
        "Bad certificate (self-signed or untrusted).",
      );
    } else if (e.type == DioExceptionType.connectionError) {
      return NetworkException(-2, "Connect failed");
    } else if (e.type == DioExceptionType.badResponse) {
      int statusCode = e.response?.statusCode ?? -3;
      if (statusCode == 401) {
        return NetworkException(statusCode, "Unauthorized");
      }
      return NetworkException(
        statusCode,
        "Server internal error ($statusCode)",
      );
    } else {
      return NetworkException(-999, "Request Error ${e.message ?? e.error}");
    }
  }
}
