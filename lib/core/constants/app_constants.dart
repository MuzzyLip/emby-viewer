import 'dart:io';

final class AppConstants {
  static const String appName = "Emby Viewer";
  static bool isAndroid = Platform.isAndroid;
  static bool isIOS = Platform.isIOS;

  /// Json Key
  static const String deviceIdKey = "emby_device_id";
  static const String accessToken = "emby_access_token";
  static const String userPrefix = "user";
}
