import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

/*
class WebView3 extends StatelessWidget {
  const WebView3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildWebView();
  }

  Widget _buildWebView() {
    return WebView3(
      javascriptMode: JavascriptMode.unrestricted,
      initialUrl: 'https://360virtualindia.in/physicslabvt',
    );
  }

}
*/

class ShopPage extends StatelessWidget {
  const ShopPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildWebView();
  }

  Widget _buildWebView() {
    return WebView(
      javascriptMode: JavascriptMode.unrestricted,
      initialUrl: 'https://360virtualindia.in/physicslabvt',
    );
  }
}

/*

class WebView extends StatefulWidget {
  @override
  _WebViewState createState() => _WebViewState();
}


@override
  Widget build(BuildContext context) {
    return _buildWebView();
  }

class _WebViewState extends State<WebView> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      javascriptMode: JavascriptMode.unrestricted,
      initialUrl: 'https://360virtualindia.in/physicslabvt',
    );
  }
}*/
