import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:emby_viwer/core/network/api_client.dart';
import 'package:emby_viwer/core/network/emby_request_context_store.dart';
import 'package:emby_viwer/features/auth/data/dto/authenticate_by_name_dto.dart';
import 'package:emby_viwer/features/auth/data/dto/system_info_public_dto.dart';
import 'package:emby_viwer/core/constants/app_constants.dart';

typedef JsonMap = Map<String, dynamic>;

final class AuthClient extends ApiClient {
  AuthClient({EmbyRequestContextStore? contextStore})
    : _contextStore = contextStore ?? EmbyRequestContextStore();

  final FlutterSecureStorage _secureStorage = FlutterSecureStorage();
  final EmbyRequestContextStore _contextStore;

  Future<AuthenticateByNameResponseDto> authenticateByName({
    required String serverAddress,
    required String username,
    required String password,
    required String version,
    String? language,
    CancelToken? cancelToken,
  }) async {
    final api = super.client;
    final url = super.resolveEmbyUrl(
      serverAddress: serverAddress,
      path: "Users/authenticatebyname",
    );
    final params = await _contextStore.getRequestParams(
      serverAddress: serverAddress,
      clientVersion: version,
      languageOverride: language,
    );
    final json = await api.post<JsonMap>(
      url,
      params: params,
      data: {"Username": username, "Pw": password},
      options: Options(
        contentType: Headers.formUrlEncodedContentType,
        headers: {"Content-Type": "application/x-www-form-urlencoded"},
      ),
    );
    final dto = AuthenticateByNameResponseDto.fromJson(json);
    await _contextStore.saveAfterLogin(
      serverAddress: serverAddress,
      clientVersion: version,
      loginUrl: url,
    );
    return dto;
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

  Future<void> saveToken(String token) async {
    await _secureStorage.write(key: AppConstants.accessToken, value: token);
  }

  Future<void> saveUser(AuthenticateUserDto user) async {
    await _secureStorage.write(
      key: "${AppConstants.userPrefix}_current",
      value: user.id,
    );
    await _secureStorage.write(
      key: "${AppConstants.userPrefix}_${user.id}_${user.serverId}",
      value: jsonEncode(user.toJson()),
    );
  }
}
