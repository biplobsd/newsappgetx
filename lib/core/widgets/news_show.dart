import 'package:flutter/material.dart';

import 'package:newsappgetx/core/model/article.dart';

class NewsShowWidget extends StatelessWidget {
  const NewsShowWidget({
    Key? key,
    required this.articles,
  }) : super(key: key);

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(bottom: 10, top: 20),
        child: Divider(),
      ),
      itemCount: articles.length,
      itemBuilder: (context, index) => Column(
        children: [
          if (articles[index].urlToImage != null)
            Image.network(
              articles[index].urlToImage as String,
            ),
          const SizedBox(
            height: 5,
          ),
          if (articles[index].title != null)
            Text(
              articles[index].title as String,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          const SizedBox(
            height: 10,
          ),
          if (articles[index].description != null)
            Text(articles[index].description as String),
        ],
      ),
    );
  }
}
