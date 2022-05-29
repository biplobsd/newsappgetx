import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newsappgetx/core/widgets/drawer.dart';

class SearchNewsView extends StatelessWidget {
  const SearchNewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search News'),
      ),
      drawer: getAppDrawer(),
      body: const Center(
        child: Text('Search News'),
      ),
    );
  }
}
