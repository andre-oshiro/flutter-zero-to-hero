class Bookmark {
  String title;
  String link;

  Bookmark(this.title, this.link);
}

class DummyWidget {
  Bookmark b = Bookmark("title", "link");
}
