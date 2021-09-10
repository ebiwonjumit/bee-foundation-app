import 'package:flutter/material.dart';

class BeeInspired extends StatefulWidget {
  const BeeInspired({Key? key}) : super(key: key);

  @override
  _BeeInspiredState createState() => _BeeInspiredState();
}

class _BeeInspiredState extends State<BeeInspired> {
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
        ));
  }
}
