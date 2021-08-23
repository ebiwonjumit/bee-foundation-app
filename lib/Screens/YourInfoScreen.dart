import 'package:bee_foundation_app/Widgets/YellowListItem.dart';
import 'package:flutter/material.dart';

class YourInfoScreen extends StatefulWidget {
  @override
  YourInfoScreenState createState() => YourInfoScreenState();
}

class YourInfoScreenState extends State<YourInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 20),
              child: CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage('images/test_profile.jpg'),
              )),
          Padding(
              padding: EdgeInsets.only(top: 15, bottom: 7),
              child: Text(
                'Jeffery Stuggard',
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                    color: Color(0xFF060606)),
              )),
          Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Event Date: 05/07/1997',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Roboto",
                    color: Color(0xFF1E1E1E)),
              )),
          Material(
              elevation: 2,
              child: InkWell(
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  width: 370,
                  padding: EdgeInsets.fromLTRB(12.0, 5.0, 10.0, 0.0),
                  height: 120,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 5),
                          child: Text(
                            "Here is a daily prompt that people can \n answer in their journal.",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text("Start typing here..."))
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'Journal Entry');
                },
              )),
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
      ),
    );
  }
}
