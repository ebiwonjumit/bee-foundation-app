import 'package:bee_foundation_app/Widgets/FeaturedCard.dart';
import 'package:flutter/material.dart';

class FeaturedResourceScreen extends StatefulWidget {
  @override
  FeaturedResourceScreenState createState() => FeaturedResourceScreenState();
}

class FeaturedResourceScreenState extends State<FeaturedResourceScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 15, left: 20),
          child: Text(
            'Featured Resources',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(left: 14),
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FeaturedCard(
                        text: "Important Info",
                        webLink: "",
                        color: Colors.blue, backgroundImage: '',),
                    FeaturedCard(
                      text: "More Important Stuff",
                      webLink: "",
                      color: Colors.black, backgroundImage: '',
                    ),
                    FeaturedCard(
                      text: "Super Important Info",
                      webLink: "",
                      color: Colors.pink, backgroundImage: '',
                    )
                  ],
                ))),
        Padding(
            padding: EdgeInsets.only(top: 15, left: 20, bottom: 5),
            child: Text(
              'The Statistics',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
            )),
        Center(
          child: Container(
          margin: EdgeInsets.only(top: 10, left: 10),
          width: 350,
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(image: AssetImage("images/stats.png"))),
          )),
        Padding(
            padding: EdgeInsets.only(top: 15, left: 20, bottom: 5),
            child: Text(
              'Share Your Story',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
            )),
      ],
    )));
  }
}
