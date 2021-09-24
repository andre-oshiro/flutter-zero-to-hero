import 'package:app_bookmark/models/bookmark.dart';
import 'package:app_bookmark/widgets/bookmark_grid_item_widget.dart';
import 'package:flutter/material.dart';

class BookmarksGridWidget extends StatelessWidget {
  BookmarksGridWidget(this.bookmarks, {Key? key}) : super(key: key);
  List<Bookmark> bookmarks;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: GridView.builder(
        itemCount: bookmarks.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.5,
          crossAxisCount: 2,
          crossAxisSpacing: 6,
        ),
        itemBuilder: (BuildContext context, int index) {
          return BookmarksGridItemWidget(bookmarks[index]);
        },
      ),
    );
  }
}
