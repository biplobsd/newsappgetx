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

  @override
  void init() {
    _dio = Dio(
      BaseOptions(baseUrl: baseUrl, headers: {
        'Authorization': 'Bearer $apiKey',
      }),
    );
  }
}
