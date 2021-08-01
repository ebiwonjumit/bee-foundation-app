import 'package:bee_foundation_app/Screens/FeaturedResourceScreen.dart';
import 'package:flutter/material.dart';

class ResourceScreen extends StatefulWidget{

  @override
  ResourceScreenState createState() => ResourceScreenState();
}

class ResourceScreenState extends State<ResourceScreen> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(75),
              child: AppBar(
                backgroundColor: Colors.white,
                title: Text("Resources"),
                centerTitle: true,
                elevation: 2,
                bottom: TabBar(
                  indicatorColor: Color(0xFFFFCD07),
                  tabs: <Widget>[
                    Text("Featured Resources"),
                    Text("Share Your Story")
                  ],
                ),
              )),
          body: TabBarView(
            children: <Widget>[FeaturedResourceScreen(), Text("Share story")],
          ),
        ));
  }
}
