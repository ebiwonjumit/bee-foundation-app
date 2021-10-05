import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'BottomNavigation.dart';
import 'Screens/LoginScreen.dart';
import 'dbs/models/BeeUser.dart';

class NavController extends StatelessWidget {
  const NavController({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<BeeUser?>(context);

    if(user == null){
      return LoginScreen();
    } else {
      return BottomNavigation();
    }
  }
}
