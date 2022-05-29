import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsappgetx/core/widgets/drawer.dart';
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
            return ListView.separated(
              separatorBuilder: (context, index) => const Padding(
                padding: EdgeInsets.only(bottom: 10, top: 20),
                child: Divider(),
              ),
              itemCount: newsHeadLineController.articles.length,
              itemBuilder: (context, index) => Column(
                children: [
                  if (newsHeadLineController.articles[index].urlToImage != null)
                    Image.network(newsHeadLineController
                        .articles[index].urlToImage as String),
                  const SizedBox(
                    height: 5,
                  ),
                  if (newsHeadLineController.articles[index].title != null)
                    Text(
                      newsHeadLineController.articles[index].title as String,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  const SizedBox(
                    height: 10,
                  ),
                  if (newsHeadLineController.articles[index].description !=
                      null)
                    Text(newsHeadLineController.articles[index].description
                        as String),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
