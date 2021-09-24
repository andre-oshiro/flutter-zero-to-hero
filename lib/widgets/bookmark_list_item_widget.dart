import 'package:app_bookmark/models/bookmark.dart';
import 'package:app_bookmark/util/navigation_util.dart';
import 'package:flutter/material.dart';

class BookmarksListItemWidget extends StatelessWidget {
  final Bookmark bookmark;
  const BookmarksListItemWidget(this.bookmark, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: InkWell(
        onTap: () {
          navigateToViewBookmarkPage(context, bookmark);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bookmark.title,
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(bookmark.link,
                    style: Theme.of(context).textTheme.subtitle1),
              ],
            ),
            Hero(tag: bookmark.link, child: Icon(Icons.star)),
          ],
        ),
      ),
    );
  }
}
