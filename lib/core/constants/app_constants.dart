import 'dart:io';

final class AppConstants {
  static const String appName = "Emby Viewer";
  static bool isAndroid = Platform.isAndroid;
  static bool isIOS = Platform.isIOS;

  /// Legacy storage keys (keep for backward compatibility)
  static const String serverUrl = "emby_server_address";
  static const String client = "emby_clinet";
  static const String deviceName = "emby_device_name";
  static const String deviceId = "emby_device_id";
  static const String embyClientVersion = "emby_client_version";
  static const String language = "emby_language";
  static const String accessToken = "emby_access_token";
  static const String userPrefix = "user";

  /// Emby request query/header field names
  static const String embyHeaderClient = "X-Emby-Client";
  static const String embyHeaderDeviceName = "X-Emby-Device-Name";
  static const String embyHeaderDeviceId = "X-Emby-Device-Id";
  static const String embyHeaderClientVersion = "X-Emby-Client-Version";
  static const String embyHeaderLanguage = "X-Emby-Language";
  static const String embyHeaderToken = "X-Emby-Token";

  /// Namespaced keys for per-server request context cache
  static const String embyContextNamespace = "emby_context";
  static const String embyCurrentServerKey =
      "${embyContextNamespace}_current_server";

  static const String embyContextFieldServerBaseUrl = "server_base_url";
  static const String embyContextFieldClient = "client";
  static const String embyContextFieldDeviceName = "device_name";
  static const String embyContextFieldDeviceId = "device_id";
  static const String embyContextFieldClientVersion = "client_version";
  static const String embyContextFieldLoginUrl = "login_url";

  static const List<String> embyContextFields = <String>[
    embyContextFieldServerBaseUrl,
    embyContextFieldClient,
    embyContextFieldDeviceName,
    embyContextFieldDeviceId,
    embyContextFieldClientVersion,
    embyContextFieldLoginUrl,
  ];

  static String embyContextStorageKey({
    required String serverKey,
    required String field,
  }) {
    return "${embyContextNamespace}_${serverKey}_$field";
  }
}
