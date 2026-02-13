import 'package:flutter/foundation.dart';

import 'package:emby_viwer/core/network/dio_client.dart';

typedef JsonMap = Map<String, dynamic>;

/// Base API client.
///
/// Subclasses should build urls with [parseServerBaseUri] + [resolveUrl]/
/// [resolveEmbyUrl] and then call [client].
class ApiClient {
  ApiClient({DioClient? client}) : client = client ?? DioClient.getInstance();

  @protected
  final DioClient client;

  /// Parse a user input address into a base uri.
  ///
  /// Examples:
  /// - `192.168.1.2:8096` -> `http://192.168.1.2:8096/`
  /// - `https://example.com` -> `https://example.com/`
  /// - `https://example.com/emby` -> `https://example.com/emby/`
  static Uri parseServerBaseUri(String serverAddress) {
    final trimmed = serverAddress.trim();
    if (trimmed.isEmpty) {
      throw ArgumentError.value(serverAddress, 'serverAddress', 'is empty');
    }

    final normalized = trimmed.contains('://') ? trimmed : 'http://$trimmed';

    final uri = Uri.parse(normalized);

    if (!uri.hasAuthority) {
      throw ArgumentError.value(
        serverAddress,
        'serverAddress',
        'is not a valid host:port (or url)',
      );
    }

    if (uri.path.isEmpty) {
      return uri.replace(path: '/');
    }
    if (!uri.path.endsWith('/')) {
      return uri.replace(path: '${uri.path}/');
    }
    return uri;
  }

  /// Resolve any relative path against [base].
  static String resolveUrl(Uri base, String path) {
    return base.resolve(path).toString();
  }

  /// Resolve an Emby API path against a user-provided server address.
  @protected
  String resolveEmbyUrl({required String serverAddress, required String path}) {
    final base = parseServerBaseUri(serverAddress);
    final normalized = _normalizeEmbyPath(base, path);
    return resolveUrl(base, normalized);
  }

  static String _normalizeEmbyPath(Uri base, String path) {
    final raw = path.startsWith('/') ? path.substring(1) : path;
    final hasEmbyPrefix = raw.toLowerCase().startsWith('emby/');
    final hasEmbyBase = base.path.toLowerCase().endsWith('/emby/');

    if (hasEmbyBase && hasEmbyPrefix) {
      return raw.substring('emby/'.length);
    }
    if (!hasEmbyBase && !hasEmbyPrefix) {
      return 'emby/$raw';
    }
    return raw;
  }
}
