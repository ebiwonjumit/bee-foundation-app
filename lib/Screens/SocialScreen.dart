import 'package:bee_foundation_app/Widgets/SocialScreenItem.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialScreen extends StatelessWidget {
  final List<String> socialItems = <String>["Instagram", "Facebook", "Twitter"];

  final List<String> urlItems = <String>[
    "instagram://user?username=thebeefoundation",
    "fb://TheBeeFoundation",
    "twitter://user?screen_name=thebeefoundation"

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Social Media"),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Color(0xFFFFCD07),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 25, left: 20),
              child: Text(
                'Social Feeds',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.all(10),
            itemCount: socialItems.length + 2,
            itemBuilder: (BuildContext context, int index) {
              if(index == 0 || index == socialItems.length + 1){
                return Container();
              }
              return SocialScreenItem(text: socialItems[index-1], onTap:
                  () async {
                if(await canLaunch(urlItems[index-1])){
                  await launch(urlItems[index-1]);
                }
                else{
                  throw 'Could not launch';
                }

              },);
            },
            separatorBuilder: (BuildContext context, int index) => Divider(
              color: Color(0xFFDDDDDD),
            ),
          ),
        ],
      ),
    );
  }
}
