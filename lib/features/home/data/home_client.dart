import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:emby_viwer/core/network/api_client.dart';
import 'package:emby_viwer/core/constants/app_constants.dart';
import 'package:emby_viwer/core/error/app_exception.dart';
import 'package:emby_viwer/core/network/emby_request_context_store.dart';
import 'package:emby_viwer/features/home/data/dto/library_dto.dart';

typedef JsonMap = Map<String, dynamic>;

final class HomeClient extends ApiClient {
  final FlutterSecureStorage _secureStorage = FlutterSecureStorage();
  final EmbyRequestContextStore _contextStore;
  String? serverAddress;

  HomeClient({EmbyRequestContextStore? contextStore, this.serverAddress})
    : _contextStore = contextStore ?? EmbyRequestContextStore();

  Future<BrowsingUserViewsDto> browsingRandomViews(String userId) async {
    final api = super.client;
    final token = await getToken();
    if (token == null) {
      throw NetworkException(401, "Request Unauthorized");
    }
    final context = await _contextStore.getCurrentServerContext();
    if (context == null) {
      throw NetworkException(-999, "Request Params Error");
    }
    final params = await _contextStore.getRequestParams(
      serverAddress: context.serverBaseUrl,
      clientVersion: context.clientVersion,
    );
    serverAddress = context.serverBaseUrl;
    final url = super.resolveEmbyUrl(
      serverAddress: context.serverBaseUrl,
      path: "Users/$userId/Items",
    );
    params.addAll(<String, String>{
      AppConstants.embyHeaderToken: token,
      "IncludeItemTypes": "CollectionFolder",
      "Recursive": "true",
      "Limit": "5",
      "SortBy": "Random",
      "SortOrder": "Ascending",
      "Fields": "DateCreated",
    });
    final json = await api.get<JsonMap>(url, params: params);
    return BrowsingUserViewsDto.fromJson(json);
  }

  Future<BrowsingUserViewsDto> browsingUserViews(String userId) async {
    final api = super.client;
    final token = await getToken();
    if (token == null) {
      throw NetworkException(401, "Request Unauthorized");
    }
    final context = await _contextStore.getCurrentServerContext();
    if (context == null) {
      throw NetworkException(-999, "Request Params Error");
    }
    final params = await _contextStore.getRequestParams(
      serverAddress: context.serverBaseUrl,
      clientVersion: context.clientVersion,
    );
    serverAddress = context.serverBaseUrl;
    final url = super.resolveEmbyUrl(
      serverAddress: context.serverBaseUrl,
      path: "Users/$userId/Items",
    );
    params.addAll(<String, String>{
      AppConstants.embyHeaderToken: token,
      "IncludeItemTypes": "CollectionFolder",
      "Recursive": "true",
      "Limit": "10",
      "SortBy": "Random",
      "Fields": "DateCreated",
    });
    final json = await api.get<JsonMap>(url, params: params);
    return BrowsingUserViewsDto.fromJson(json);
  }

  Future<String?> getToken() async {
    return await _secureStorage.read(key: AppConstants.accessToken);
  }

  Future<String?> getUserId() async {
    return await _secureStorage.read(key: "${AppConstants.userPrefix}_current");
  }
}
