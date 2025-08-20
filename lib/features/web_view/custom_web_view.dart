import 'package:flutter/cupertino.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class CustomWebView extends StatefulWidget {
  final String webUrl;
  final VoidCallback? onScrollToBottom;
  const CustomWebView({super.key, required this.webUrl, this.onScrollToBottom});

  @override
  State<CustomWebView> createState() => _CustomWebViewState();
}

class _CustomWebViewState extends State<CustomWebView> {
  late final InAppWebViewController _webViewController;
  String url = "";
  double progress = 0;

  @override
  Widget build(BuildContext context) {
    return _buildWebView();
  }

  Widget _buildWebView() {
    return Stack(
      children: [
        InAppWebView(
            initialUrlRequest: URLRequest(url: WebUri(widget.webUrl)),
            initialSettings: InAppWebViewSettings(javaScriptEnabled: true),
            onLoadStart: onLoadStart,
            onLoadStop: onLoadStop,
            onScrollChanged: (controller, x, y) async {},
            onProgressChanged: onProgressChanged,
            onUpdateVisitedHistory: onUpdateVisitedHistory,
            onWebViewCreated: (InAppWebViewController webViewController) {
              _webViewController = webViewController;
            },
            onReceivedError: (InAppWebViewController controller,
                WebResourceRequest webResourceReq,
                WebResourceError webResourceError) {
              debugPrint('onReceivedError....${webResourceError.description}');
            },
            onReceivedHttpError: (InAppWebViewController controller,
                WebResourceRequest webResourceReq,
                WebResourceResponse response) {
              debugPrint('onLoadHttpError....${response}');
            },
            onConsoleMessage: onConsoleMessage),
        (progress ?? 0) < 1
            ? const Center(
                child: SizedBox(
                    height: 20, width: 20, child: CupertinoActivityIndicator()))
            : const SizedBox()
      ],
    );
  }

  void onLoadStart(InAppWebViewController controller, uri) {
    debugPrint("On Load Start...===========>${uri.toString()}");
    setState(() {
      url = url.toString();
    });
  }

  void onLoadStop(InAppWebViewController controller, url) async {
    debugPrint("On Load Start... ===========>${url.toString()}");
    setState(() {
      this.url = url.toString();
    });
  }

  void onProgressChanged(InAppWebViewController controller, int progress) {
    setState(() {
      this.progress = progress / 100;
    });
  }

  void onUpdateVisitedHistory(controller, url, androidIsReload) {
    this.url = url.toString();
  }

  void onConsoleMessage(controller, consoleMessage) {
    // kDebugPrint('Print From Flutter Web Console....$consoleMessage}');
  }
}
