import 'package:dio/dio.dart';
import 'package:emby_viwer/core/constants/app_constants.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor();

  final FlutterSecureStorage _secureStorage = FlutterSecureStorage();
  // No Need to Inject token. Token should be passed in params

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      _secureStorage.delete(key: AppConstants.accessToken);
    }
  }
}
