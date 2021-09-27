import 'package:bee_foundation_app/Screens/BottomNavs/MyJournalScreen.dart';
import 'package:flutter/material.dart';

import 'MyProfileScreen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(75),
              child: AppBar(
                backgroundColor: Colors.white,
                title: Text("My Profile"),
                centerTitle: true,
                elevation: 2,
                bottom: TabBar(
                  indicatorColor: Color(0xFFFFCD07),
                  tabs: <Widget>[
                    Text("My Profile"),
                    Text("My Journal")
                  ],
                ),
              )),
          body: TabBarView(
            children: <Widget>[MyProfileScreen(),MyJournalScreen()],
          ),
        ));
  }
}
