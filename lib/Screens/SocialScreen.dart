import 'package:bee_foundation_app/Widgets/SocialScreenItem.dart';
import 'package:flutter/material.dart';

class SocialScreen extends StatelessWidget{

  final List<String> socialItems = <String>[
    "Instagram",
    "Facebook",
    "Twitter"];

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
              padding: EdgeInsets.only(top: 10,left: 20),
              child: Text(
                'Social Feeds',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700
                ),
              ),
            ),
          ),
          ListView.separated(
            padding: EdgeInsets.all(10),
            itemCount: socialItems.length,
            itemBuilder: (BuildContext context, int index){
              return SocialScreenItem(text: socialItems[index]);
            },
            separatorBuilder: (BuildContext context, int index) => Divider(
              color: Color(0xFFDDDDDD),
            ),
          )
        ],

      ),
    );
  }
}