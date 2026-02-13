import 'package:dio/dio.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:emby_viwer/l10n/app_localizations.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:emby_viwer/core/network/api_client.dart';
import 'package:emby_viwer/features/auth/data/dto/authenticate_by_name_dto.dart';
import 'package:emby_viwer/features/auth/data/dto/system_info_public_dto.dart';
import 'package:emby_viwer/core/constants/app_constants.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/v4.dart';

typedef JsonMap = Map<String, dynamic>;

final class AuthClient extends ApiClient {
  final FlutterSecureStorage _secureStorage = FlutterSecureStorage();
  final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

  AuthClient();

  Future<AuthenticateByNameResponseDto> authenticateByName({
    required String serverAddress,
    required String username,
    required String password,
    required String version,
    required String language,
    CancelToken? cancelToken,
  }) async {
    final api = super.client;
    final url = super.resolveEmbyUrl(
      serverAddress: serverAddress,
      path: "Users/authenticatebyname",
    );
    final String client = AppConstants.isAndroid
        ? "Android"
        : AppConstants.isIOS
        ? "iOS"
        : "Emby Client";
    final String deviceName = switch (client) {
      "Android" => (await deviceInfo.androidInfo).name,
      "iOS" => (await deviceInfo.iosInfo).name,
      _ => "Emby Client",
    };
    final String id = await getDeviceId();
    final json = await api.post<JsonMap>(
      url,
      params: {
        "X-Emby-Client": client,
        "X-Emby-Device-Name": deviceName,
        "X-Emby-Device-Id": id,
        "X-Emby-Client-Version": version,
        "X-Emby-Language": language,
      },
      data: {"Username": username, "Pw": password},
      options: Options(
        contentType: Headers.formUrlEncodedContentType,
        headers: {"Content-Type": "application/x-www-form-urlencoded"},
      ),
    );
    return AuthenticateByNameResponseDto.fromJson(json);
  }

  Future<SystemInfoPublicResponseDto> systemInfoPublic({
    required String serverAddress,
  }) async {
    final api = super.client;
    final url = super.resolveEmbyUrl(
      serverAddress: serverAddress,
      path: "system/info/public",
    );
    final json = await api.get<JsonMap>(url);
    return SystemInfoPublicResponseDto.fromJson(json);
  }

  Future<String> getDeviceId() async {
    final existing = await _secureStorage.read(key: AppConstants.deviceIdKey);
    if (existing != null && existing.isNotEmpty) {
      return existing;
    }
    final id = const Uuid().v4();
    await _secureStorage.write(key: AppConstants.deviceIdKey, value: id);
    return id;
  }
}
