import 'package:bee_foundation_app/Screens/JournalEntryScreen.dart';
import 'package:flutter/material.dart';

class BeeInspired extends StatelessWidget {

  final String prompt;

  const BeeInspired({Key? key, required this.prompt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
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
                      prompt,
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
            Navigator.push(context,MaterialPageRoute(builder: (context) => JournalEntryScreen(prompt: prompt,)));
          },
        ));
  }
}
