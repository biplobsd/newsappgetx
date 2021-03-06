// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import 'package:newsappgetx/core/model/article.dart';
import 'package:newsappgetx/core/repository/news_repo_impl.dart';
import 'package:newsappgetx/core/repository/news_repository.dart';

class NewsHeadLineController extends GetxController {
  late NewsRepo _newsRepo;
  late RxList<Article> articles = RxList();
  RxBool isLoading = false.obs;

  NewsHeadLineController() {
    _newsRepo = Get.find<NewsRepoImpl>();
    loadNewsHeadline();
  }

  loadNewsHeadline() async {
    showLoading();

    List<Article>? results = await _newsRepo.getNewsHeadline();
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
