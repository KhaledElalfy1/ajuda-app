import 'package:ajuda/core/database/api/api_keys.dart';
import 'package:dio/dio.dart';

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[ApiKeys.token] = null;
    super.onRequest(options, handler);
  }
}
