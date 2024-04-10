import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsView extends StatelessWidget {
  NewsView({required this.newsUrl});
  final String newsUrl;

  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.disabled)
      ..loadRequest(Uri.parse(newsUrl));
    return Scaffold(
      body: WebViewWidget(controller: controller),
    );
  }
}
