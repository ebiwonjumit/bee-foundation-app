import 'package:bee_foundation_app/Widgets/BeeInspired.dart';
import 'package:bee_foundation_app/Widgets/BuzzCard.dart';
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
              child: FutureBuilder<QuerySnapshot>(
                  future: BeeDatabase().getFeaturedEvents(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasData) {
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
                                text: events[1]['Event Name'],
                                color: Colors.blue,
                                webLink: events[1]['Link'],
                                backgroundImage: events[1]['Picture'],
                              ),
                              FeaturedCard(
                                text: events[2]['Event Name'],
                                color: Colors.pink,
                                backgroundImage: events[2]['Picture'],
                                webLink: events[2]['Link'],
                              )
                            ],
                          ));
                    } else {
                      return CircularProgressIndicator();
                    }
                  })),
          // Padding(
          //     padding: EdgeInsets.only(left: 20),
          //     child: BeeInspired(
          //       // prompt: "${promptData!['Prompt']}",
          //       prompt: "Hey",
          //     )),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 20),
            child: Text(
              'The Buzz',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 20),
              child: FutureBuilder<QuerySnapshot>(
                future: BeeDatabase().getTheBuzz(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasData) {
                    List<DocumentSnapshot> feed = snapshot.data!.docs;
                    return SingleChildScrollView(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BuzzCard(
                          text: feed[0]['Name'],
                          webLink: feed[0]['Link'],
                          backgroundImage: feed[0]['Picture'],
                          color: Colors.red,
                        ),

                      ],
                    ));
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              )),
        ],
      )),
    );
  }
}
