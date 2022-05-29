import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:newsappgetx/core/model/article.dart';
import 'package:newsappgetx/core/repository/news_repo_impl.dart';
import 'package:newsappgetx/core/repository/news_repository.dart';

class NewsHeadLineController extends GetxController {
  late NewsRepo _newsRepo;
  late RxList<Article> articles;
  RxBool isLoading = false.obs;

  NewsHeadLineController() {
    _newsRepo = Get.find<NewsRepoImpl>();
    loadNewsHeadline();
  }

  loadNewsHeadline() async {
    showLoading();

    final results = await _newsRepo.getNewsHeadline();
    hideLoading();

    if (results != null) {
      articles = results.obs;
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
