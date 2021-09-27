import 'package:flutter/material.dart';

class MyJournalScreen extends StatefulWidget{
  @override
  MyJournalScreenState createState() => MyJournalScreenState();

}

class MyJournalScreenState extends State<MyJournalScreen>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'There are no written Journals yet.'
        ),
      ),
    );
  }

}