import 'package:bee_foundation_app/dbs/database/UserDatabase.dart';
import 'package:bee_foundation_app/dbs/models/BeeUser.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService with ChangeNotifier{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  BeeUser? _userFromFirebaseUser(User? user){
    return  BeeUser(userId: user!.uid);
  }

  Stream<BeeUser?> get user{
    return _auth.authStateChanges()
        .map(_userFromFirebaseUser);
  }

  //get currentUser
  User? getUser(){
    return _auth.currentUser;
  }

  //register with email & password
  Future registerWithEmailAndPassword(String email, String password, String firstName, String lastName) async{
    try{
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      await UserDatabase(uid: user!.uid).updateUserInformation(firstName, lastName);
      return _userFromFirebaseUser(user);
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }

  //sign in with email & password
  Future signInWithEmailAndPassword(String email, String password) async{
    try{
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return _userFromFirebaseUser(user);
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }


  //sign in with OAuth


  //sign out
  Future logout() async {
    var result = FirebaseAuth.instance.signOut();

    notifyListeners();
    return result;
  }


}
