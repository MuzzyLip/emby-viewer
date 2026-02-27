import 'dart:convert';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:uuid/uuid.dart';

import 'package:emby_viwer/core/constants/app_constants.dart';
import 'package:emby_viwer/core/network/api_client.dart';

final class EmbyRequestContextSnapshot {
  const EmbyRequestContextSnapshot({
    required this.serverBaseUrl,
    required this.client,
    required this.deviceName,
    required this.deviceId,
    required this.clientVersion,
    this.loginUrl,
  });

  final String serverBaseUrl;
  final String client;
  final String deviceName;
  final String deviceId;
  final String clientVersion;
  final String? loginUrl;
}

/// Persist and read Emby header context.
///
/// - `X-Emby-Language` is always resolved dynamically at request time.
/// - Other header fields are cached and only refreshed when server changes
///   or caller explicitly updates them.
final class EmbyRequestContextStore {
  EmbyRequestContextStore({
    FlutterSecureStorage? secureStorage,
    DeviceInfoPlugin? deviceInfo,
    Uuid? uuid,
  }) : _secureStorage = secureStorage ?? const FlutterSecureStorage(),
       _deviceInfo = deviceInfo ?? DeviceInfoPlugin(),
       _uuid = uuid ?? const Uuid();

  final FlutterSecureStorage _secureStorage;
  final DeviceInfoPlugin _deviceInfo;
  final Uuid _uuid;

  Future<Map<String, String>> getRequestParams({
    required String serverAddress,
    required String clientVersion,
    String? languageOverride,
  }) async {
    final context = await getOrCreate(
      serverAddress: serverAddress,
      clientVersion: clientVersion,
    );

    return <String, String>{
      AppConstants.embyHeaderClient: context.client,
      AppConstants.embyHeaderDeviceName: context.deviceName,
      AppConstants.embyHeaderDeviceId: context.deviceId,
      AppConstants.embyHeaderClientVersion: context.clientVersion,
      AppConstants.embyHeaderLanguage: resolveLanguageTag(
        languageOverride: languageOverride,
      ),
    };
  }

  Future<EmbyRequestContextSnapshot> getOrCreate({
    required String serverAddress,
    required String clientVersion,
  }) async {
    final serverBaseUrl = _normalizeServerBaseUrl(serverAddress);
    final serverKey = _serverKey(serverBaseUrl);
    final existing = await getByServerAddress(serverAddress);

    if (existing != null && existing.clientVersion == clientVersion) {
      return existing;
    }

    final snapshot = EmbyRequestContextSnapshot(
      serverBaseUrl: serverBaseUrl,
      client: existing?.client ?? _resolveClientName(),
      deviceName: existing?.deviceName ?? await _resolveDeviceName(),
      deviceId: existing?.deviceId ?? await _resolveDeviceId(),
      clientVersion: clientVersion,
      loginUrl: existing?.loginUrl,
    );

    await _saveSnapshot(serverKey: serverKey, snapshot: snapshot);
    await _secureStorage.write(
      key: AppConstants.embyCurrentServerKey,
      value: serverKey,
    );
    return snapshot;
  }

  Future<void> saveAfterLogin({
    required String serverAddress,
    required String clientVersion,
    required String loginUrl,
  }) async {
    final serverBaseUrl = _normalizeServerBaseUrl(serverAddress);
    final serverKey = _serverKey(serverBaseUrl);
    final context = await getOrCreate(
      serverAddress: serverAddress,
      clientVersion: clientVersion,
    );

    final snapshot = EmbyRequestContextSnapshot(
      serverBaseUrl: context.serverBaseUrl,
      client: context.client,
      deviceName: context.deviceName,
      deviceId: context.deviceId,
      clientVersion: context.clientVersion,
      loginUrl: loginUrl,
    );

    await _saveSnapshot(serverKey: serverKey, snapshot: snapshot);
    await _secureStorage.write(
      key: AppConstants.embyCurrentServerKey,
      value: serverKey,
    );
  }

  Future<EmbyRequestContextSnapshot?> getByServerAddress(
    String serverAddress,
  ) async {
    final serverBaseUrl = _normalizeServerBaseUrl(serverAddress);
    final serverKey = _serverKey(serverBaseUrl);
    final raw = await _readServerContext(serverKey);

    final client = raw[AppConstants.embyContextFieldClient];
    final deviceName = raw[AppConstants.embyContextFieldDeviceName];
    final deviceId = raw[AppConstants.embyContextFieldDeviceId];
    final clientVersion = raw[AppConstants.embyContextFieldClientVersion];
    if (client == null ||
        deviceName == null ||
        deviceId == null ||
        clientVersion == null) {
      return null;
    }

    return EmbyRequestContextSnapshot(
      serverBaseUrl:
          raw[AppConstants.embyContextFieldServerBaseUrl] ?? serverBaseUrl,
      client: client,
      deviceName: deviceName,
      deviceId: deviceId,
      clientVersion: clientVersion,
      loginUrl: raw[AppConstants.embyContextFieldLoginUrl],
    );
  }

  Future<EmbyRequestContextSnapshot?> getCurrentServerContext() async {
    final serverKey = await _secureStorage.read(
      key: AppConstants.embyCurrentServerKey,
    );
    if (serverKey == null || serverKey.isEmpty) {
      return null;
    }
    final raw = await _readServerContext(serverKey);

    final serverBaseUrl = raw[AppConstants.embyContextFieldServerBaseUrl];
    final client = raw[AppConstants.embyContextFieldClient];
    final deviceName = raw[AppConstants.embyContextFieldDeviceName];
    final deviceId = raw[AppConstants.embyContextFieldDeviceId];
    final clientVersion = raw[AppConstants.embyContextFieldClientVersion];
    if (serverBaseUrl == null ||
        client == null ||
        deviceName == null ||
        deviceId == null ||
        clientVersion == null) {
      return null;
    }

    return EmbyRequestContextSnapshot(
      serverBaseUrl: serverBaseUrl,
      client: client,
      deviceName: deviceName,
      deviceId: deviceId,
      clientVersion: clientVersion,
      loginUrl: raw[AppConstants.embyContextFieldLoginUrl],
    );
  }

  Future<void> clearServerContext(String serverAddress) async {
    final serverBaseUrl = _normalizeServerBaseUrl(serverAddress);
    final serverKey = _serverKey(serverBaseUrl);
    await Future.wait(
      AppConstants.embyContextFields.map(
        (field) => _secureStorage.delete(key: _composeKey(serverKey, field)),
      ),
    );
  }

  String resolveLanguageTag({String? languageOverride}) {
    final override = languageOverride?.trim();
    if (override != null && override.isNotEmpty) {
      return override;
    }

    final locale = ui.PlatformDispatcher.instance.locale;
    final countryCode = locale.countryCode;
    if (countryCode == null || countryCode.isEmpty) {
      return locale.languageCode;
    }
    return '${locale.languageCode}-$countryCode';
  }

  Future<void> _saveSnapshot({
    required String serverKey,
    required EmbyRequestContextSnapshot snapshot,
  }) async {
    final values = <String, String>{
      _composeKey(serverKey, AppConstants.embyContextFieldServerBaseUrl):
          snapshot.serverBaseUrl,
      _composeKey(serverKey, AppConstants.embyContextFieldClient):
          snapshot.client,
      _composeKey(serverKey, AppConstants.embyContextFieldDeviceName):
          snapshot.deviceName,
      _composeKey(serverKey, AppConstants.embyContextFieldDeviceId):
          snapshot.deviceId,
      _composeKey(serverKey, AppConstants.embyContextFieldClientVersion):
          snapshot.clientVersion,
      if (snapshot.loginUrl != null && snapshot.loginUrl!.isNotEmpty)
        _composeKey(serverKey, AppConstants.embyContextFieldLoginUrl):
            snapshot.loginUrl!,
    };

    await Future.wait(
      values.entries.map(
        (entry) => _secureStorage.write(key: entry.key, value: entry.value),
      ),
    );
  }

  Future<Map<String, String?>> _readServerContext(String serverKey) async {
    final all = await _secureStorage.readAll();
    return <String, String?>{
      for (final field in AppConstants.embyContextFields)
        field: all[_composeKey(serverKey, field)],
    };
  }

  String _normalizeServerBaseUrl(String serverAddress) {
    return ApiClient.parseServerBaseUri(serverAddress).toString();
  }

  String _serverKey(String normalizedServerBaseUrl) {
    return base64Url
        .encode(utf8.encode(normalizedServerBaseUrl.toLowerCase()))
        .replaceAll('=', '');
  }

  String _composeKey(String serverKey, String field) {
    return AppConstants.embyContextStorageKey(
      serverKey: serverKey,
      field: field,
    );
  }

  String _resolveClientName() {
    if (Platform.isAndroid) return 'Android';
    if (Platform.isIOS) return 'iOS';
    return AppConstants.appName;
  }

  Future<String> _resolveDeviceName() async {
    try {
      if (Platform.isAndroid) {
        final info = await _deviceInfo.androidInfo;
        return _pickFirstNonEmpty(<String?>[
          info.model,
          info.device,
          info.name,
        ]);
      }
      if (Platform.isIOS) {
        final info = await _deviceInfo.iosInfo;
        return _pickFirstNonEmpty(<String?>[info.name, info.model]);
      }
    } catch (_) {
      // fall through
    }
    return AppConstants.appName;
  }

  Future<String> _resolveDeviceId() async {
    final existing = await _secureStorage.read(key: AppConstants.deviceId);
    if (existing != null && existing.isNotEmpty) {
      return existing;
    }

    final generated = _uuid.v4();
    await _secureStorage.write(key: AppConstants.deviceId, value: generated);
    return generated;
  }

  String _pickFirstNonEmpty(List<String?> values) {
    for (final value in values) {
      final trimmed = value?.trim();
      if (trimmed != null && trimmed.isNotEmpty) {
        return trimmed;
      }
    }
    return AppConstants.appName;
  }
}
