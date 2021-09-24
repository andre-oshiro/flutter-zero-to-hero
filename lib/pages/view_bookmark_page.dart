import 'package:app_bookmark/models/bookmark.dart';
import 'package:app_bookmark/widgets/view_web_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewBookmakPage extends StatefulWidget {
  final Bookmark _bookmark;

  const ViewBookmakPage(this._bookmark, {Key? key}) : super(key: key);

  @override
  State<ViewBookmakPage> createState() => _ViewBookmakPageState(_bookmark);
}

class _ViewBookmakPageState extends State<ViewBookmakPage> {
  final _isLoadingWebPage = true;
  final Bookmark _bookmark;

  _ViewBookmakPageState(this._bookmark);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View Bookmark"),
        actions: <Widget>[
          Hero(
            tag: _bookmark.link,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.star),
            ),
          )
        ],
      ),
      body: ViewWebPageWidget(_isLoadingWebPage, _bookmark.link),
    );
  }
}
