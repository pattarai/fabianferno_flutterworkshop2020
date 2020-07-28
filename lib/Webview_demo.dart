import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

class Fabrowser extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Fabrowser();
  }
}

class _Fabrowser extends State<Fabrowser> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (BuildContext context) {
        return WebView(
          initialUrl: 'https://fabianferno.wordpress.com/',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
          onPageStarted: (String url) {
            showAlertDialog(context);
          },
          onPageFinished: (String url) {
            try {
              Navigator.pop(context);
            } catch (e) {
              print("Exception");
            }
          },
          gestureNavigationEnabled: true,
        );
      }),
    );
  }
  showAlertDialog(var context) {
    var alertDialog = AlertDialog(
      title: Text("Loading..."),
      content: LinearProgressIndicator(),
    );

    showDialog(context: context, builder: (context) => alertDialog);
  }
}
