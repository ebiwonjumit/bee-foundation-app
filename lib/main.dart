import 'package:flutter/material.dart';
import 'HomePageScreen.dart';
import 'ProfileScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bee Foundation',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(title: 'Bee Foundation'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex  = 0;
  final List<Widget> _children =[
    HomePageScreen(),
    ProfileScreen(),
    ProfileScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: _children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        backgroundColor: Colors.white,
        unselectedItemColor:  Colors.grey,
        selectedItemColor: Color(0xFF8A817C),
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(icon: new ImageIcon(AssetImage("images/daily_feed_menu_ic.png"),), label: "Daily Feed"),
          BottomNavigationBarItem(icon: new ImageIcon(AssetImage("images/resources_menu_ic.png"),), label: "Resources"),
          BottomNavigationBarItem(icon: new ImageIcon(AssetImage("images/profile_menu_ic.png"),), label: "Profile"),
          BottomNavigationBarItem(icon: new ImageIcon(AssetImage("images/more_menu_ic.png"),), label: "More")
        ],
      ),
    );
  }
  void onTabTapped(int index){
    setState((){
      currentIndex = index;
    });
  }
}


