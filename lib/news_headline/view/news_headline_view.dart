import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsappgetx/core/widgets/drawer.dart';
import 'package:newsappgetx/core/widgets/news_show.dart';
import 'package:newsappgetx/news_headline/controller/news_headline_controller.dart';

class NewsHeadlineView extends StatelessWidget {
  NewsHeadlineView({Key? key}) : super(key: key);
  static String path = '/news_headline';
  final NewsHeadLineController newsHeadLineController =
      Get.find<NewsHeadLineController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Headline'),
      ),
      drawer: getAppDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: Obx(
          () {
            if (newsHeadLineController.isLoading.isTrue) {
              return const Center(child: CircularProgressIndicator());
            }
            return NewsShowWidget(
              articles: newsHeadLineController.articles,
            );
          },
        ),
      ),
    );
  }
}
