import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget{

  @override
  MoreScreenState createState() => MoreScreenState();
}

class MoreScreenState extends State<MoreScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("More"),
        centerTitle: true,
        elevation: 2,
      ),

    );
  }

}