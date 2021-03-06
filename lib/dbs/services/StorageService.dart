import 'dart:io';

import 'package:bee_foundation_app/dbs/services/AuthService.dart';
import "package:firebase_storage/firebase_storage.dart";

class StorageService {
  FirebaseStorage firebaseStorage =
      FirebaseStorage.instanceFor(bucket: "gs://beefoundationapp.appspot.com");

  AuthService _authService = AuthService();


  Future<String> uploadProfileImage(File? file) async {
    var userId = _authService.getUser()!.uid;
    Reference reference = firebaseStorage.ref().child("user/profile/$userId");


    try {
      await reference
          .putFile(file!)
          .whenComplete(() async{
           String downUrl = reference.getDownloadURL().toString();
           return downUrl;
      });
    } on FirebaseException catch (e) {
      print(e.toString());
      return "";
    }
    return "";
  }

  Future<String> downloadProfileImage(String userId) async {
    try {
      return await firebaseStorage
          .ref()
          .child("user/profile/$userId")
          .getDownloadURL();
    } on FirebaseException catch (e) {
      return "Error";
    }
  }
}
