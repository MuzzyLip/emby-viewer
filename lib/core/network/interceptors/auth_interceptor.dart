import 'dart:async';

import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor();

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _tokenProvider();
    if (token != null && token.isNotEmpty) {
      // TODO: Inject Token
    }
    handler.next(options);
  }

  Future<String?> _tokenProvider() {
    return Future(() => null);
  }
}
