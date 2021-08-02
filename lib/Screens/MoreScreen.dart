import 'package:bee_foundation_app/Widgets/MoreScreenItem.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MoreScreen extends StatefulWidget{

  @override
  MoreScreenState createState() => MoreScreenState();
}

class MoreScreenState extends State<MoreScreen>{

  final List<String> moreItems = <String>[
    "Donate",
    "Schedule and Events",
    "About the Bee Foundation",
    "Social Media",
    "Start a Fundraiser"];

  @override
  Widget build(BuildContext context) {
    final List<Function> moreItemsActions = <Function>[
          (){
      WebView(
        initialUrl: "https://www.classy.org/give/44382/#!/donation/checkout",
      );
          },
          (){},
          (){
      Navigator.pushNamed(context, 'AboutUs');
          },
          (){
      Navigator.pushNamed(context, 'Social');
          },
          (){
      WebView(
        initialUrl: "https://www.thebeefoundation.org/contact/",
      );
          }
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("More"),
        centerTitle: true,
        elevation: 2,
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(8),
        itemCount: moreItems.length,
        itemBuilder: (BuildContext context, int index){
          return MoreScreenItem(text: moreItems[index], onTap: moreItemsActions[index]);
        },
        separatorBuilder: (BuildContext context, int index) => Divider(
          color: Color(0xFFDDDDDD),
        ),
      )

    );
  }

}
