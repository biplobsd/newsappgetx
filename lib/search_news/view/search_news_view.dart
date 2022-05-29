import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsappgetx/core/widgets/drawer.dart';
import 'package:newsappgetx/core/widgets/news_show.dart';
import 'package:newsappgetx/search_news/controller/search_news_controller.dart';

class SearchNewsView extends StatelessWidget {
  SearchNewsView({Key? key}) : super(key: key);
  static String path = '/search_news';
  final SearchNewsController searchNewsController =
      Get.find<SearchNewsController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search News'),
      ),
      drawer: getAppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onSubmitted: (value) => searchNewsController.searchNews(value),
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search), hintText: 'Search news'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            Obx(
              () => searchNewsController.isLoading.isTrue
                  ? const CircularProgressIndicator()
                  : searchNewsController.isInitialArticles.isTrue
                      ? Expanded(
                          child: NewsShowWidget(
                            articles: searchNewsController.articles,
                          ),
                        )
                      : const Center(
                          child: Text(
                            'News will show here',
                          ),
                        ),
            ),
          ],
        ),
      ),
    );
  }
}
