import 'package:chat_gpt/utils/controller/web_view_provider.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({super.key});

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  late WebViewController controller;
  @override
  void initState() {
    var webProvider = context.read<WebViewProvider>();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
            debugPrint("loading");
            webProvider.webLoading(true);
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {
            webProvider.webLoading(false);
          },
          onWebResourceError: (WebResourceError error) {},
        ),
      )
      ..loadRequest(Uri.parse('https://platform.openai.com/account/api-keys'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var webProvider = Provider.of<WebViewProvider>(context);

    return Scaffold(
      // extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: webProvider.isWebLoading
          ? Center(
              child: LoadingAnimationWidget.hexagonDots(
                color: const Color(0xFF8283BD),
                size: 50,
              ),
            )
          : WebViewWidget(
              controller: controller,
            ),
    );
  }
}
