import 'package:bee_foundation_app/Screens/Onboarding/InfoOnboarding.dart';
import 'package:bee_foundation_app/Screens/Onboarding/QuestionsOnboarding.dart';
import 'package:bee_foundation_app/Screens/SocialScreens/AboutUsScreen.dart';
import 'package:bee_foundation_app/Screens/JournalEntryScreen.dart';
import 'package:bee_foundation_app/Screens/SocialScreens/ScheduleScreen.dart';
import 'package:flutter/material.dart';
import 'BottomNavigation.dart';
import 'Screens/BottomNavs/SocialScreen.dart';
import 'Screens/LoginScreen.dart';
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
        '/': (context) => LoginScreen(),
        'Home': (context) => BottomNavigation(),
        'Login': (context) => LoginScreen(),
        'AboutUs': (context) => AboutUsScreen(),
        'Social': (context) => SocialScreen(),
        'Schedule': (context) => ScheduleScreen(),
        'Journal Entry': (context) => JournalEntryScreen(),
        'InfoOnboarding': (context) => InfoOnboarding(),
        'QuestionsOnboarding': (context) => QuestionsOnboarding()
      },
      initialRoute: '/',
    );
  }
}

