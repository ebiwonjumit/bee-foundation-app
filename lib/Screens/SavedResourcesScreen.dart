import 'package:flutter/material.dart';

class SavedResourceScreen extends StatefulWidget{
  @override
  SavedResourceScreenState createState() => SavedResourceScreenState();

}

class SavedResourceScreenState extends State<SavedResourceScreen>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'You have no Saved Resources yet.'
        ),
      ),
    );
  }

}