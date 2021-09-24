import 'package:app_bookmark/models/bookmark.dart';
import 'package:app_bookmark/util/navigation_util.dart';
import 'package:flutter/material.dart';

class BookmarksListTileWidget extends StatelessWidget {
  Bookmark bookmark;
  BookmarksListTileWidget(this.bookmark, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title:
            Text(bookmark.title, style: Theme.of(context).textTheme.headline6),
        subtitle:
            Text(bookmark.link, style: Theme.of(context).textTheme.subtitle1),
        onTap: () => navigateToViewBookmarkPage(context, bookmark));
  }
}
