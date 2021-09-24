import 'package:app_bookmark/models/bookmark.dart';
import 'package:app_bookmark/widgets/bookmark_list_item_widget.dart';
import 'package:flutter/material.dart';

class BookmarksListWidget extends StatelessWidget {
  BookmarksListWidget(this.bookmarks, {Key? key}) : super(key: key);
  List<Bookmark> bookmarks;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bookmarks.length,
      itemBuilder: (BuildContext context, int index) {
        return BookmarksListItemWidget(bookmarks[index]);
      },
    );
  }
}
