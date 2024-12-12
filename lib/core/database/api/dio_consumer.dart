import 'package:ajuda/core/database/api/api_consumer.dart';
import 'package:ajuda/core/database/api/api_keys.dart';
import 'package:ajuda/core/errors/error_model.dart';
import 'package:ajuda/core/errors/exceptions.dart';
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
    } on DioException catch (e) {
      _handleDioException(e);
    }
  }

  @override
  Future get(String path,
      {Object? body, Map<String, dynamic>? queryParameters}) async {
    try {
      return await dio.get(path, data: body, queryParameters: queryParameters);
    } on DioException catch (e) {
      _handleDioException(e);
    }
  }

  @override
  Future patch(String path,
      {Object? body, Map<String, dynamic>? queryParameters}) async {
    try {
      return await dio.patch(path,
          data: body, queryParameters: queryParameters);
    } on DioException catch (e) {
      _handleDioException(e);
    }
  }

  @override
  Future post(String path,
      {Object? body, Map<String, dynamic>? queryParameters}) async {
    try {
      return await dio.post(path, data: body, queryParameters: queryParameters);
    } on DioException catch (e) {
      _handleDioException(e);
    }
  }

  void _handleDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        throw ServerException(
            errorModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.sendTimeout:
        throw ServerException(
            errorModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.receiveTimeout:
        throw ServerException(
            errorModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.badCertificate:
        throw ServerException(
            errorModel: ErrorModel.fromJson(e.response!.data));

      case DioExceptionType.cancel:
        throw ServerException(
            errorModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.connectionError:
        throw ServerException(
            errorModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.unknown:
        throw ServerException(
            errorModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.badResponse:
        switch (e.response?.statusCode) {
          case 400: // bad request
            throw ServerException(
                errorModel: ErrorModel.fromJson(e.response!.data));
          case 401: // unauthorized
            throw ServerException(
                errorModel: ErrorModel.fromJson(e.response!.data));
          case 403: // forbidden
            throw ServerException(
                errorModel: ErrorModel.fromJson(e.response!.data));
          case 404: // not found
            throw ServerException(
                errorModel: ErrorModel.fromJson(e.response!.data));
          case 409: // coefficient
            throw ServerException(
                errorModel: ErrorModel.fromJson(e.response!.data));
          case 422: // unprocessable entity
            throw ServerException(
                errorModel: ErrorModel.fromJson(e.response!.data));
          case 504: // server exception
            throw ServerException(
                errorModel: ErrorModel.fromJson(e.response!.data));
        }
    }
  }
}
