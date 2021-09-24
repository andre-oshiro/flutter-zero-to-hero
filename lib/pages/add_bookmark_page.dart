import 'package:app_bookmark/models/bookmark.dart';
import 'package:flutter/material.dart';

class AddBookmarksPage extends StatefulWidget {
  @override
  State<AddBookmarksPage> createState() => _AddBookmarksPageState();
}

class _AddBookmarksPageState extends State<AddBookmarksPage> {
  final _titleTextController = TextEditingController();

  final _linkTextController = TextEditingController();

  final _linkFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    var labelText2 = 'Title';
    return Scaffold(
      appBar: AppBar(
        title: Text("Add a new bookmark"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check),
        backgroundColor: Colors.green,
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          String title = _titleTextController.text;
          String link = _linkTextController.text;
          if (isInputValid(title, link)) {
            Navigator.pop(context, Bookmark(title, link));
          } else {
            showInputError(title, link);
          }
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              autofocus: true,
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (textInput) {
                FocusScope.of(context).requestFocus(_linkFocusNode);
              },
              controller: _titleTextController,
              decoration: InputDecoration(
                icon: Icon(Icons.title),
                labelText: labelText2,
                hintText: 'Title of the bookmark',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            TextFormField(
              controller: _linkTextController,
              focusNode: _linkFocusNode,
              decoration: InputDecoration(
                icon: Icon(Icons.link),
                labelText: 'URL',
                hintText: 'Webpage link',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _titleTextController.dispose();
    _linkTextController.dispose();
    _linkFocusNode.dispose();
    super.dispose();
  }

  bool isInputValid(String title, String link) {
    return title.isNotEmpty && link.isNotEmpty;
  }

  void showInputError(String title, String link) {
    if (title.isEmpty) {
      showSnackBar('Title is Empty');
    } else if (link.isEmpty) {
      showSnackBar('Link is Empty');
    }
  }

  void showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
