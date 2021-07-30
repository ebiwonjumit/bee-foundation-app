import 'package:flutter/material.dart';
import 'BottomNavigation.dart';

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
      home: BottomNavigation(title: 'Bee Foundation'),
    );
  }
}

