import 'package:flutter/material.dart';

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
                    Text("Your Information"),
                    Text("Saved Resources")
                  ],
                ),
              )),
          body: TabBarView(
            children: <Widget>[Text("Your info"), Text("Savd Resource")],
          ),
        ));
  }
}
