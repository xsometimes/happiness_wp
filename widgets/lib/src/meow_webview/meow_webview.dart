import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter/foundation.dart';

class MeowWebview extends StatefulWidget {
  const MeowWebview({
    super.key,
  });

  @override
  State<MeowWebview> createState() => _MeowWebviewState();
}

class _MeowWebviewState extends State<MeowWebview> {

  final GlobalKey webViewKey = GlobalKey();

  InAppWebViewSettings _settings = InAppWebViewSettings(
      isInspectable: kDebugMode,
      mediaPlaybackRequiresUserGesture: false,
      allowsInlineMediaPlayback: true,
      iframeAllow: "camera; microphone",
      iframeAllowFullscreen: true);

    InAppWebViewController? _webViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meow Webview'),
      ),
      body: SafeArea(
        child: Expanded(child: Stack(
          children: [
            InAppWebView(
              key: webViewKey,
              initialUrlRequest: URLRequest(url: WebUri("https://inappwebview.dev/")),
              initialSettings: _settings,
              onWebViewCreated: (controller) {
                _webViewController = controller;
              },
              onLoadStart: (controller, url) {},
              onPermissionRequest: (controller, request) async {
                return PermissionResponse(
                    resources: request.resources,
                    action: PermissionResponseAction.GRANT);
              },

              shouldOverrideUrlLoading: (controller, navigationAction) async { // 当当前WebView中的URL即将被加载时，给主机应用程序一个控制的机会。
                var uri = navigationAction.request.url!;

                if (![
                  "http",
                  "https",
                  "file",
                  "chrome",
                  "data",
                  "javascript",
                  "about"
                ].contains(uri.scheme)) {
                  if (await canLaunchUrl(uri)) {
                    // Launch the App
                    await launchUrl(
                      uri,
                    );
                    // and cancel the request
                    return NavigationActionPolicy.CANCEL;
                  }
                }

                return NavigationActionPolicy.ALLOW;
              },

            )
          ],
        ),),
      ),
    );
  }
}


