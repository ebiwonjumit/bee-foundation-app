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
          InkWell(
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
            onTap: () {},
          )
        ],
      ),
    );
  }
}
