import 'package:bee_foundation_app/Widgets/YellowFormButton.dart';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JournalEntryScreen extends StatefulWidget {
  final String? prompt;
  const JournalEntryScreen({Key? key, this.prompt});

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
        title: Text("Journal Entry"),
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
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(left: 0, top: 55),
              child: Material(
                elevation: 3,
                child: Container(
                    padding: EdgeInsets.only(top: 15),
                    width: 350,
                    height: 500,
                    color: Colors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            'Entry for $currentDateTime',
                            style: TextStyle(color: Colors.grey, fontSize: 11),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 15, left: 10, right: 10),
                          child: Text(
                            widget.prompt!,
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 15, left: 10),
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
                            )),
                      ],
                    )),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
            child: YellowFormButton(text: "Submit", width: 100, height: 40, borderRadius: 20, onPressed: (){}),
          )
        ],
      ),
    );
  }
}
