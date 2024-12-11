import 'dart:developer';

import 'package:ajuda/core/database/api/api_consumer.dart';
import 'package:ajuda/core/database/api/api_keys.dart';
import 'package:dio/dio.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}) {
    dio.options.baseUrl = ApiKeys.baseUrl;
    dio.interceptors.add(LogInterceptor(
      error: true,
      request: true,
      requestBody: true,
      requestHeader: true,
      responseHeader: true,
      responseBody: true,
    ));
  }

  @override
  Future delete(String path,
      {Object? body, Map<String, dynamic>? queryParameters}) async {
    try {
      return await dio.delete(path,
          data: body, queryParameters: queryParameters);
    } on Exception catch (e) {
      log(e.toString());
    }
  }

  @override
  Future get(String path,
      {Object? body, Map<String, dynamic>? queryParameters}) async {
    try {
      return await dio.get(path, data: body, queryParameters: queryParameters);
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  Future patch(String path,
      {Object? body, Map<String, dynamic>? queryParameters}) async {
    try {
      return await dio.patch(path,
          data: body, queryParameters: queryParameters);
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  Future post(String path,
      {Object? body, Map<String, dynamic>? queryParameters}) async {
    try {
      return await dio.post(path, data: body, queryParameters: queryParameters);
    } catch (e) {
      log(e.toString());
    }
  }
}
