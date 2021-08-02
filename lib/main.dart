import 'package:bee_foundation_app/Screens/AboutUsScreen.dart';
import 'package:flutter/material.dart';
import 'BottomNavigation.dart';
import 'Screens/SocialScreen.dart';

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
        fontFamily: "Roboto",
      ),
      routes: {
        '/': (context) => BottomNavigation(),
        'AboutUs': (context) => AboutUsScreen(),
        'Social': (context) => SocialScreen()
      },
      initialRoute: '/',
    );
  }
}

