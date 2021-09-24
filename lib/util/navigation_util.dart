import 'package:app_bookmark/models/bookmark.dart';
import 'package:app_bookmark/pages/add_bookmark_page.dart';
import 'package:app_bookmark/pages/view_bookmark_page.dart';
import 'package:flutter/material.dart';

void navigateToViewBookmarkPage(BuildContext context, Bookmark bookmark) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => ViewBookmakPage(bookmark)),
  );
}

Future navigateToAddBookmarksPage(BuildContext context) {
  return Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => AddBookmarksPage()),
  );
}
