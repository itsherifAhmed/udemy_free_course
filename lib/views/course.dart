import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CourseView extends StatefulWidget {
  final String  courseUrl;
  CourseView({required this.courseUrl});

  @override
  _CourseViewState createState() => _CourseViewState();
}

class _CourseViewState extends State<CourseView> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: WebView(
            initialUrl: widget.courseUrl,
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: ((WebViewController webviewController) {
              _controller.complete(webviewController);
            }),
          ),
        ),
      ),
    );
  }
}
