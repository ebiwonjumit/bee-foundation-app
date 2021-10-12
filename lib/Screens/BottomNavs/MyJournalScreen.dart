import 'package:bee_foundation_app/Widgets/YellowListItem.dart';
import 'package:flutter/material.dart';

class MyJournalScreen extends StatefulWidget{
  @override
  MyJournalScreenState createState() => MyJournalScreenState();

}

class MyJournalScreenState extends State<MyJournalScreen>{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top:15, left: 15),
          alignment: Alignment.topLeft,
          child: Text(
            "Past Entries",
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
          ),
        ),
        ListView.separated(
          shrinkWrap: true,
          padding: EdgeInsets.all(10),
          itemCount: 7,
          itemBuilder: (BuildContext context, int index) {
            if(index == 0 || index == 5){
              return Container();
            }
            return YellowListItem(iconText: "08", subtitleText: "Here is some intro text of the respect.", titleText: "Here is the title of the daily prompt from this day.", onTap:(){});
          },
          separatorBuilder: (BuildContext context, int index) => Divider(
            color: Color(0xFFDDDDDD),
          ),
        ),
      ],
    );
  }

}