import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget{
  @override
  ScheduleScreenState createState() => ScheduleScreenState();

}

class ScheduleScreenState extends State<ScheduleScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Schedule & Events"
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Color(0xFFFFCD07),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
  
}