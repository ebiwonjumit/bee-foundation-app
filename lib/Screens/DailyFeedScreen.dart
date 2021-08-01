import 'package:bee_foundation_app/Widgets/FeaturedCard.dart';
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
                borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: AssetImage("images/festival_logo.png")
                  )
              ),
            ),
            centerTitle: true,
            elevation: 0,
          )),
      extendBodyBehindAppBar: false,
      body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  'Featured Events',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 14),
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          FeaturedCard(text: "Event 1", onTap: (){}, color: Colors.blue),
                          FeaturedCard(text: "Event 2", onTap: (){}, color: Colors.brown,),
                          FeaturedCard(text: "Event 3", onTap: (){}, color: Colors.pink,)
                        ],
                      ))),
            ],
          )),


    );
  }

}