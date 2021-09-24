import 'package:app_bookmark/models/bookmark.dart';
import 'package:app_bookmark/util/navigation_util.dart';
import 'package:app_bookmark/widgets/bookmark_grid_widget.dart';
import 'package:app_bookmark/widgets/bookmark_list_widget.dart';
import 'package:flutter/material.dart';

class BookmarksPage extends StatefulWidget {
  @override
  State<BookmarksPage> createState() => _BookmarksPageState();
}

class _BookmarksPageState extends State<BookmarksPage> {
  bool isGridMode = false;
  List<Bookmark> bookmarks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bookmarks"),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {
                isGridMode = !isGridMode;
              });
            },
            icon: isGridMode
                ? Icon(
                    Icons.grid_on,
                    color: Colors.white,
                  )
                : Icon(
                    Icons.list,
                    color: Colors.white,
                  ),
          ),
        ],
      ),
      body: isGridMode
          ? BookmarksGridWidget(bookmarks)
          : BookmarksListWidget(bookmarks),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add),
        onPressed: () => onAddButtonPressed(context),
        label: Text("Add"),
      ),
    );
  }

  Future<void> onAddButtonPressed(BuildContext context) async {
    final result = await navigateToAddBookmarksPage(context);

    if (result != null && result is Bookmark) {
      setState(() {
        bookmarks.add(result);
      });
    }
  }
}
