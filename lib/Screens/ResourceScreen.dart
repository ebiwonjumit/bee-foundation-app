import 'package:bee_foundation_app/Screens/FeaturedResourceScreen.dart';
import 'package:bee_foundation_app/Screens/FavoritesScreen.dart';
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
                    Text("Favorites")
                  ],
                ),
              )),
          body: TabBarView(
            children: <Widget>[FeaturedResourceScreen(), FavoritesScreen()],
          ),
        ));
  }
}
