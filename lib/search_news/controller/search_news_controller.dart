import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:newsappgetx/core/model/article.dart';
import 'package:newsappgetx/core/repository/news_repo_impl.dart';
import 'package:newsappgetx/core/repository/news_repository.dart';

class SearchNewsController extends GetxController {
  late NewsRepo _newsRepo;
  late RxList<Article> articles;
  RxBool isLoading = false.obs;
  bool isInitialArticles = false;

  SearchNewsController() {
    _newsRepo = Get.find<NewsRepoImpl>();
  }

  void searchNews(String query) async {
    showLoading();

    List<Article> results = await _newsRepo.getSearchNews(query);
    hideLoading();

    if (results != null) {
      articles = results.obs;
      isInitialArticles = true;
    } else {
      if (kDebugMode) {
        print('No data recieved');
      }
    }
  }

  showLoading() {
    isLoading.toggle();
  }

  hideLoading() {
    isLoading.toggle();
  }
}
