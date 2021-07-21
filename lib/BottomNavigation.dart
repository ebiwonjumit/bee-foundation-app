import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'HomePageScreen.dart';
import 'ProfileScreen.dart';
import 'BottomTabItem.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;
  final List<Widget> _children = [
    HomePageScreen(),
    ProfileScreen(),
    HomePageScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFCD07),
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: _children[currentIndex],
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              print("Made it");
            });
          },
          backgroundColor: Color(0xFFFFCD07),
          foregroundColor: Colors.white,
          child: ImageIcon(AssetImage("images/bee_icon.png",))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _buildBottomFabBar()
    );
  }

  _buildBottomFabBar() {
    return BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Row(
          children: <Widget>[
            BottomTabItem(
                icon: AssetImage("images/daily_feed_menu_ic.png"),
                text: "Daily Feed",
                isSelected: currentIndex == 0,
                onTap: () {
                  setState(() {
                  currentIndex = 0;
                  });
                }),
            BottomTabItem(
                icon: AssetImage("images/resources_menu_ic.png"),
                text: "Resources",
                isSelected: currentIndex == 1,
                onTap: () {
                  setState(() {
                  currentIndex = 1;
                  });
                }),
            SizedBox(width: 48),
            BottomTabItem(
              icon: AssetImage("images/profile_menu_ic.png"),
              text: "Profile",
              isSelected: currentIndex == 2,
              onTap: () {
                setState(() {
                currentIndex = 2;
                });
              },
            ),
            BottomTabItem(
              icon: AssetImage("images/more_menu_ic.png"),
              text: "More",
              isSelected: currentIndex == 3,
              onTap: () {
                setState(() {
                currentIndex = 3;
                });
              },
            )
          ],
        ));
  }
}
