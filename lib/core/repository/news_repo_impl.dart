import 'package:get/get.dart';
import 'package:newsappgetx/core/repository/news_repository.dart';
import 'package:newsappgetx/service/http_services.dart';
import 'package:newsappgetx/service/http_services_impl.dart';

class newsRepoImpl implements NewsRepo {
  late HttpService _httpService;

  newsRepoImpl() {
    _httpService = Get.put(HttpServiceImpl());
    _httpService.init();
  }

  @override
  Future getNewsHeadline() {
    // TODO: implement getNewsHeadline
    throw UnimplementedError();
  }

  @override
  Future getSearchNews(String query) {
    // TODO: implement getSearchNews
    throw UnimplementedError();
  }
}
