import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsappgetx/news_headline/view/news_headline_view.dart';
import 'package:newsappgetx/search_news/view/search_news_view.dart';

Widget getAppDrawer() {
  return Drawer(
    child: ListView(
      children: [
        ListTile(
          title: const Text('News Headline'),
          onTap: () {
            Get.toNamed(NewsHeadlineView.path);
          },
          leading: const Icon(Icons.contact_page_outlined),
        ),
        ListTile(
          title: const Text('Search News'),
          onTap: () {
            Get.toNamed(SearchNewsView.path);
          },
          leading: const Icon(Icons.search_outlined),
        )
      ],
    ),
  );
}
