import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JournalEntryScreen extends StatefulWidget {
  @override
  JournalEntryScreenState createState() => JournalEntryScreenState();
}

class JournalEntryScreenState extends State<JournalEntryScreen> {
  @override
  Widget build(BuildContext context) {
    final DateTime now = new DateTime.now();
    final String currentDateTime =
        DateFormat.yMMMd('en_US').add_jm().format(now);
    return Scaffold(
      appBar: AppBar(
        title: Text("Name of Entry"),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Color(0xFFFFCD07),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.delete,
              color: Color(0xFFFFCD07),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 25, top: 55),
    child: Material(
            elevation: 3,
        child: Container(
            padding: EdgeInsets.only(top: 15),
            width: 350,
            height: 500,
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'Entry for $currentDateTime',
                    style: TextStyle(color: Colors.grey, fontSize: 11),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:15, left: 10, right: 10),
                  child: Text(
                    "Here is a daily prompt that people can answer in their journal.",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:15, left: 10),
                  child: TextField(
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: "Start typing here...",
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),

                  )
                ),
              ],
            )),
      )),
    );
  }
}
