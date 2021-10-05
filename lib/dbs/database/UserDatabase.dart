import 'package:cloud_firestore/cloud_firestore.dart';

class UserDatabase{

  final String uid;
  UserDatabase({required this.uid});

  //collection ref

  final CollectionReference userDataCollection = FirebaseFirestore.instance.collection("userInfo");

  Future updateUserInformation(String firstName, String lastName, ) async{
    return await userDataCollection.doc(uid).set({

    });
  }

}