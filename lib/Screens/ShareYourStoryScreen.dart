import 'package:flutter/material.dart';

class ShareYourStoryScreen extends StatefulWidget{
  @override
  ShareYourStoryScreenState createState() => ShareYourStoryScreenState();

}

class ShareYourStoryScreenState extends State<ShareYourStoryScreen>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
            'There are no Shared Stories yet.'
        ),
      ),
    );
  }

}