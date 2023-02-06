import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:project_2/pages/home_page_test.dart';

class WebViewPage extends StatefulWidget {
  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  String selectedUrl = 'https://www.noon.com/saudi-ar/terms-of-sale/';
  final Set<JavascriptChannel> jsChannels = {
    JavascriptChannel(
      name: 'Print',
      onMessageReceived: (JavascriptMessage message) {},
    ),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (_) => WebviewScaffold(
              appBar: AppBar(
                leading: InkWell(
                    onTap: () => Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => const HomePageTest()), (Route<dynamic> route) => false),
                    child: Icon(Icons.arrow_back_ios, color: Colors.grey.withOpacity(0.8))),
                title: Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                  Text(
                    " شروط و أحكام",
                    style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                ]),
                backgroundColor: Colors.white.withOpacity(0.9),
                centerTitle: true,
              ),
              url: selectedUrl,
            ),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
