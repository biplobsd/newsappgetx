import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newsappgetx/core/widgets/drawer.dart';

class NewsHeadlineView extends StatelessWidget {
  const NewsHeadlineView({Key? key}) : super(key: key);
  static String path = '/news_headline';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Headline'),
      ),
      drawer: getAppDrawer(),
      body: const Center(child: Text('News Headline')),
    );
  }
}
