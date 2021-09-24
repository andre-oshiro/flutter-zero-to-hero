import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewWebPageWidget extends StatefulWidget {
  var _isLoadingWebPage = false;
  final String _link;
  ViewWebPageWidget(this._isLoadingWebPage, this._link, {Key? key})
      : super(key: key);

  @override
  _ViewVwebPageWidgetState createState() => _ViewVwebPageWidgetState();
}

class _ViewVwebPageWidgetState extends State<ViewWebPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        WebView(
          onPageFinished: (url) {
            setState(() {
              widget._isLoadingWebPage = false;
            });
          },
          initialUrl: widget._link,
        ),
        widget._isLoadingWebPage
            ? const CircularProgressIndicator()
            : Container(),
      ],
    );
  }
}
