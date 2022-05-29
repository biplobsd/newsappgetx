import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsappgetx/news_headline/view/news_headline_view.dart';
import 'package:newsappgetx/search_news/view/search_news_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(
          name: '/news_headline',
          page: () => const NewsHeadlineView(),
        ),
        GetPage(
          name: '/search_news',
          page: () => const SearchNewsView(),
        ),
      ],
      initialRoute: '/news_headline',
    );
  }
}
