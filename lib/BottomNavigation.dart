import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'Screens/DailyFeedScreen.dart';
import 'Screens/MoreScreen.dart';
import 'Screens/ResourceScreen.dart';
import 'Screens/ProfileScreen.dart';
import 'Widgets/BottomTabItem.dart';

class BottomNavigation extends StatefulWidget {

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;
  final List<Widget> _children = [
    DailyFeedScreen(),
    ResourceScreen(),
    ProfileScreen(),
    MoreScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[currentIndex],
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                print("Made it");
              });
            },
            backgroundColor: Color(0xFFFFCD07),
            foregroundColor: Colors.white,  
            child: Align(
                widthFactor: 1,
                child: ImageIcon(
                  AssetImage(
                    "images/bee_icon.png",
                  ),
                  size: 32,
                ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: _buildBottomFabBar());
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
