class AppException implements Exception {
  final String message;

  const AppException(this.message);

  @override
  String toString() => "AppException: $message";
}

class NetworkException implements Exception {
  final int code;
  final String message;

  const NetworkException(this.code, this.message);

  @override
  String toString() => "NetworkException: ($code $message)";
}
