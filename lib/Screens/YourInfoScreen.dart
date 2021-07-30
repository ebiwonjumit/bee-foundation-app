import 'package:flutter/material.dart';

class YourInfoScreen extends StatefulWidget {
  @override
  YourInfoScreenState createState() => YourInfoScreenState();
}

class YourInfoScreenState extends State<YourInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          Container(
            width: 370,
            height: 100,
            child:
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "Here is a daily prompt that people can \n answer in their journal.",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text("Start typing here..."))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
