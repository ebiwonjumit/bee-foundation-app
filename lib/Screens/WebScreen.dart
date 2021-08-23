import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebScreen extends StatefulWidget{
  final String title;
  final String url;
  const WebScreen({Key? key,required this.title, required this.url}) : super(key: key);

  @override
  WebScreenState createState() => WebScreenState(title,url);

}
class WebScreenState extends State<WebScreen>{
  WebScreenState(this.title, this.url);
  final String title;
  final String url;
  Color bG = Colors.grey;
  int currentIndex = 1;

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Color(0xFFFFCD07),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(title),
      ),
      body: IndexedStack(
        index: currentIndex,
        children: <Widget>[
          WebView(
            initialUrl: url,
            onPageFinished: (finish){
              setState(() {
                bG = Colors.transparent;
                currentIndex = 0;
              });
            },
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController){},
          ),
          Center(
            child: Container(
              color: bG,
              alignment: FractionalOffset.center,
              child: CircularProgressIndicator(backgroundColor: Color(0xFFFFCD07),),
            )
          )
        ],
      ),
    );
  }

}