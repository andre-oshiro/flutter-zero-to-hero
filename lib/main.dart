import 'package:app_bookmark/pages/bookmarks_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppBookmark());
}

class AppBookmark extends StatelessWidget {
  const AppBookmark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookmarksPage(),
    );
  }
}
