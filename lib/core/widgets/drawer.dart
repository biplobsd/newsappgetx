import 'package:flutter/material.dart';

Widget getAppDrawer() {
  return Drawer(
    child: ListView(
      children: [
        ListTile(
          title: const Text('News Headline'),
          onTap: () {},
          leading: const Icon(Icons.contact_page_outlined),
        ),
        ListTile(
          title: const Text('Search News'),
          onTap: () {},
          leading: const Icon(Icons.search_outlined),
        )
      ],
    ),
  );
}
