import 'package:flutter/material.dart';

class DailyFeedScreen extends StatefulWidget{

  @override
  DailyFeedScreenState createState() => DailyFeedScreenState();


}

class DailyFeedScreenState extends State<DailyFeedScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: AppBar(
            backgroundColor: Color(0xFFFFD64D),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/festival_logo.png")
                  )
              ),
            ),
            centerTitle: true,
            elevation: 0,
          )),
      extendBodyBehindAppBar: true,


    );
  }

}