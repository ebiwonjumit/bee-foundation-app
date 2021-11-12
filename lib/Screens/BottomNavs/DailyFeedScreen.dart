import 'package:bee_foundation_app/Widgets/BeeInspired.dart';
import 'package:bee_foundation_app/Widgets/FeaturedCard.dart';
import 'package:bee_foundation_app/dbs/database/BeeDatabase.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DailyFeedScreen extends StatefulWidget {
  @override
  DailyFeedScreenState createState() => DailyFeedScreenState();
}

class DailyFeedScreenState extends State<DailyFeedScreen> {
  //Services

  DocumentSnapshot? promptData;
  @override
  Widget build(BuildContext context) {
    // BeeDatabase().getDailyPromptData().then((DocumentSnapshot value) {
    //   setState(() {
    //     promptData = value;
    //   });
    // });

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: AppBar(
            backgroundColor: Color(0xFFFFD64D),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: AssetImage("images/festival_logo_new.png"))),
            ),
            centerTitle: true,
            elevation: 0,
          )),
      extendBodyBehindAppBar: false,
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15, left: 20),
            child: Text(
              'Featured Events',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 14, bottom: 10),
              child: StreamBuilder<QuerySnapshot>(
                  stream: BeeDatabase().featuredEventsStream,
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    List<DocumentSnapshot> events = snapshot.data!.docs;
                    return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            FeaturedCard(
                              text: events[0]['Event Name'],
                              webLink: events[0]['Link'],
                              backgroundImage: events[0]['Picture'],
                              color: Colors.red,
                            ),
                            FeaturedCard(
                              text: "Event 2",
                              color: Colors.brown, webLink: '', backgroundImage: '',
                            ),
                            FeaturedCard(
                              text: "Event 3",
                              color: Colors.pink, backgroundImage: '', webLink: '',
                            )
                          ],
                        ));
                  })),
          Padding(
              padding: EdgeInsets.only(left: 20),
              child: BeeInspired(
                // prompt: "${promptData!['Prompt']}",
                prompt: "Hey",
              )),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 20),
            child: Text(
              'The Buzz',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 0),
              child: SingleChildScrollView(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                      child: InkWell(
                    child: Container(
                      margin: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black),
                      width: 350,
                      height: 125,
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                "Event 1",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ))),
                    ),
                    onTap: () {},
                  )),
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.purple),
                      width: 350,
                      height: 125,
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                "Event 2",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ))),
                    ),
                    onTap: () {},
                  ),
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.orange),
                      width: 350,
                      height: 125,
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                "Event 3",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ))),
                    ),
                    onTap: () {},
                  )
                ],
              ))),
        ],
      )),
    );
  }
}
