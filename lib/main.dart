import 'package:bee_foundation_app/Screens/AboutUsScreen.dart';
import 'package:bee_foundation_app/Screens/ScheduleScreen.dart';
import 'package:flutter/material.dart';
import 'BottomNavigation.dart';
import 'Screens/SocialScreen.dart';
import 'Screens/WebScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bee Foundation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        fontFamily: "Roboto",
      ),
      routes: {
        '/': (context) => BottomNavigation(),
        'AboutUs': (context) => AboutUsScreen(),
        'Social': (context) => SocialScreen(),
        'Schedule': (context) => ScheduleScreen()
      },
      initialRoute: '/',
    );
  }
}

