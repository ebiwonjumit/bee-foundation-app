import 'package:bee_foundation_app/dbs/models/BeeUser.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  BeeUser? _userFromFirebaseUser(User user){
    return  BeeUser(userId: user.uid);
  }

  //register with email & password

  //sign in with email & password


  //sign in with OAuth


  //sign out


}
