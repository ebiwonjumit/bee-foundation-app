import 'package:flutter/material.dart';
import 'Screens/BottomNavs/DailyFeedScreen.dart';
import 'Screens/BottomNavs/MoreScreen.dart';
import 'Screens/BottomNavs/ResourceScreen.dart';
import 'Screens/BottomNavs/ProfileScreen.dart';
import 'Screens/WebScreen.dart';
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return WebScreen(
                        title: "Contact Us",
                        url: "https://www.thebeefoundation.org/contact/");
                  }),
                );
            },
            backgroundColor: Color(0xFFFFCD07),
            foregroundColor: Colors.white,  
            child: Align(
                widthFactor: 2,
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            Padding(
              padding: EdgeInsets.only(right: 37.0),
            child: BottomTabItem(
                icon: AssetImage("images/resources_menu_ic.png"),
                text: "Resources",
                isSelected: currentIndex == 1,
                onTap: () {
                  setState(() {
                    currentIndex = 1;
                  });
                })),
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
