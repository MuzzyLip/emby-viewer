import 'dart:io';

final class AppConstants {
  static const String appName = "Emby Viewer";
  static bool isAndroid = Platform.isAndroid;
  static bool isIOS = Platform.isIOS;
  static const String deviceIdKey = "emby_device_id";
}
