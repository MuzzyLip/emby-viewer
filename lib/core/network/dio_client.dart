import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';

import 'package:emby_viwer/core/network/interceptors/auth_interceptor.dart';
import 'package:emby_viwer/core/network/interceptors/response_interceptor.dart';
import 'package:emby_viwer/core/network/network_config.dart';
import 'package:emby_viwer/core/error/app_exception.dart';

class DioClient {
  static DioClient? _instance;
  late Dio _dio;
  final NetworkConfig config = const NetworkConfig();

  DioClient() : this._create();

  /// Private Method for creating Dio
  DioClient._create() {
    final dio = Dio(
      BaseOptions(
        // No need baseUrl. because baseUrl passed by user input.
        connectTimeout: config.connectTimeout,
        receiveTimeout: config.receiveTimeout,
        sendTimeout: config.sendTimeout,
        headers: <String, dynamic>{...config.defaultHeaders},
        responseType: ResponseType.json,
      ),
    );

    dio.interceptors.addAll(<Interceptor>[
      AuthInterceptor(),
      ResponseInterceptor(),
      if (config.enableLogging)
        LogInterceptor(
          request: true,
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          responseBody: true,
          error: true,
        ),
    ]);

    if (!kReleaseMode && config.allowBadCertificates) {
      final adapter = dio.httpClientAdapter;
      if (adapter is IOHttpClientAdapter) {
        adapter.createHttpClient = () {
          final client = HttpClient();
          client.badCertificateCallback =
              (X509Certificate cert, String host, int port) => true;
          return client;
        };
      }
    }

    _dio = dio;
  }

  static DioClient getInstance() {
    _instance ??= DioClient._create();
    return _instance!;
  }

  Future<T> request<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      Response response = await _dio.request(
        path,
        data: data,
        options: options,
        cancelToken: cancelToken,
        queryParameters: params,
      );
      return response.data as T;
    } on DioException catch (e) {
      throw e.error as NetworkException;
    }
  }

  Future<T> get<T>(
    String path, {
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      Response response = await _dio.get(
        path,
        options: options,
        cancelToken: cancelToken,
        queryParameters: params,
      );
      return response.data as T;
    } on DioException catch (e) {
      throw e.error as NetworkException;
    }
  }

  Future<T> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      Response response = await _dio.post(
        path,
        data: data,
        options: options,
        cancelToken: cancelToken,
        queryParameters: params,
      );
      return response.data as T;
    } on DioException catch (e) {
      throw e.error as NetworkException;
    }
  }

  Future<T> put<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      Response response = await _dio.put(
        path,
        data: data,
        queryParameters: params,
        options: options,
        cancelToken: cancelToken,
      );
      return response.data as T;
    } on DioException catch (e) {
      throw e.error as NetworkException;
    }
  }

  Future<T> delete<T>(
    String path, {
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      Response response = await _dio.delete(
        path,
        queryParameters: params,
        options: options,
        cancelToken: cancelToken,
      );
      return response.data as T;
    } on DioException catch (e) {
      throw e.error as NetworkException;
    }
  }

  Future<T> upload<T>(
    String path, {
    required MultipartFile file,
    String fileName = 'file',
    Map<String, dynamic>? params,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
  }) async {
    try {
      FormData formData = FormData.fromMap({
        fileName: file,
        if (params != null) ...params,
      });
      Response response = await _dio.post(
        path,
        data: formData,
        options: Options(contentType: Headers.multipartFormDataContentType),
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
      );
      return response.data as T;
    } on DioException catch (e) {
      throw e.error as NetworkException;
    }
  }
}
