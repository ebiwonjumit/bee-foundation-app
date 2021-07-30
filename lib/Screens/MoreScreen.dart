import 'package:bee_foundation_app/Widgets/MoreScreenItem.dart';
import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget{

  @override
  MoreScreenState createState() => MoreScreenState();
}

class MoreScreenState extends State<MoreScreen>{

  final List<String> moreItems = <String>["Donate", "Schedule and Events", "About the Bee Foundation", "Social Media", "Start a Fundraiser"];
  final List<Function> moreItemsActions = <Function>[(){},(){},(){},(){},(){}];
  @override
  Widget build(BuildContext context) {
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
