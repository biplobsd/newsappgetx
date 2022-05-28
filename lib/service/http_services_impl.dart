import 'package:dio/dio.dart';
import 'package:dio/src/response.dart';
import 'package:flutter/foundation.dart';
import 'package:newsappgetx/constraint/urls.dart';
import 'package:newsappgetx/service/http_services.dart';

class HttpServiceImpl implements HttpService {
  late Dio _dio;

  @override
  Future<Response> getRequest(String url) async {
    Response response;
    try {
      response = await _dio.get(url);
    } on DioError catch (e) {
      if (kDebugMode) {
        print(e);
      }
      throw Exception(e.message);
    }
    return response;
  }

  initialzeInterceptiors() {
    _dio.interceptors.add(
      InterceptorsWrapper(onError: (e, handler) {
        if (kDebugMode) {
          print(e.message);
        }
      }, onRequest: (request, handler) {
        if (kDebugMode) {
          print('${request.method} | ${request.path}');
        }
      }, onResponse: (response, handler) {
        if (kDebugMode) {
          print(
              '${response.statusCode} | ${response.statusMessage} | ${response.data}');
        }
      }),
    );
  }

  @override
  void init() {
    _dio = Dio(
      BaseOptions(baseUrl: baseUrl, headers: {
        'Authorization': 'Bearer $apiKey',
      }),
    );
  }
}
