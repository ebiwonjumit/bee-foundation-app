import 'package:flutter/material.dart';
import 'HomePageScreen.dart';
import 'ProfileScreen.dart';
import 'TabItem.dart';

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
    ProfileScreen(),
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
          onPressed: () {},
          backgroundColor: Color(0xFFFFCD07),
          foregroundColor: Colors.white,
          child: ImageIcon(AssetImage("images/bee_icon.png",))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _buildBottomFabBar()
    );
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  _buildBottomFabBar() {
    return BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Row(
          children: <Widget>[
            TabItem(
                icon: AssetImage("images/daily_feed_menu_ic.png"),
                text: "Daily Feed",
                isSelected: currentIndex == 0,
                onTap: () {
                  onTabTapped(currentIndex);
                }),
            TabItem(
                icon: AssetImage("images/resources_menu_ic.png"),
                text: "Resources",
                isSelected: currentIndex == 1,
                onTap: () {
                  onTabTapped(currentIndex);
                }),
            SizedBox(width: 48),
            TabItem(
              icon: AssetImage("images/profile_menu_ic.png"),
              text: "Profile",
              isSelected: currentIndex == 2,
              onTap: () {
                onTabTapped(currentIndex);
              },
            ),
            TabItem(
              icon: AssetImage("images/more_menu_ic.png"),
              text: "More",
              isSelected: currentIndex == 3,
              onTap: () {
                onTabTapped(currentIndex);
              },
            )
          ],
        ));
  }
}
