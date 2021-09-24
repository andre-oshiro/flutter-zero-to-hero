import 'package:app_bookmark/models/bookmark.dart';
import 'package:app_bookmark/util/navigation_util.dart';
import 'package:flutter/material.dart';

class BookmarksGridItemWidget extends StatelessWidget {
  final Bookmark bookmark;
  const BookmarksGridItemWidget(this.bookmark, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: InkWell(
          onTap: () {
            navigateToViewBookmarkPage(context, bookmark);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                bookmark.title,
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                bookmark.link,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const SizedBox(
                height: 6,
              ),
              Hero(tag: bookmark.link, child: Icon(Icons.star)),
            ],
          ),
        ),
      ),
    );
  }
}
