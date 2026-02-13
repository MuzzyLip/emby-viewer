import 'package:flutter/foundation.dart';

class NetworkConfig {
  final Duration connectTimeout;
  final Duration receiveTimeout;
  final Duration sendTimeout;
  final Map<String, String> defaultHeaders;
  final bool enableLogging;
  final bool allowBadCertificates;

  const NetworkConfig({
    this.connectTimeout = const Duration(seconds: 6),
    this.receiveTimeout = const Duration(seconds: 15),
    this.sendTimeout = const Duration(seconds: 6),
    this.defaultHeaders = const <String, String>{
      'Content-Type': 'application/json',
    },
    this.enableLogging = !kReleaseMode,
    this.allowBadCertificates = !kReleaseMode,
  });
}
