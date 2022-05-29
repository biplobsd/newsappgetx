import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:newsappgetx/core/model/news_response_model.dart';
import 'package:newsappgetx/core/repository/news_repository.dart';
import 'package:newsappgetx/service/http_services.dart';
import 'package:newsappgetx/service/http_services_impl.dart';

class NewsRepoImpl implements NewsRepo {
  late HttpService _httpService;

  NewsRepoImpl() {
    _httpService = Get.put(HttpServiceImpl());
    _httpService.init();
  }

  @override
  Future getNewsHeadline() async {
    try {
      final response =
          await _httpService.getRequest('/v2/top-headlines?country=us');
      final parseResponse = NewsResponse.fromJson(response.data);
      return parseResponse.articles;
    } on Exception catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  @override
  Future getSearchNews(String query) async {
    try {
      final response = await _httpService.getRequest('/v2/everything?q=$query');
      final parseResponse = NewsResponse.fromJson(response.data);
      return parseResponse.articles;
    } on Exception catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }
}
