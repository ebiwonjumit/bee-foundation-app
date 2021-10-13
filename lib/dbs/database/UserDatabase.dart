import 'package:cloud_firestore/cloud_firestore.dart';

class UserDatabase{

  final String uid;
  UserDatabase({required this.uid});



  final CollectionReference userDataCollection = FirebaseFirestore.instance.collection("userInfo");

  //collection ref
  Future updateUserInformation(String firstName, String lastName) async{
    return await userDataCollection.doc(uid).set({
      'First Name': firstName,
      'Last Name': lastName,

    });
  }

  //Get UserInfo Stream
  Stream<QuerySnapshot> getUserInformation(){
    return userDataCollection.snapshots();

  }

  //Get UserData DocumentSnapshot
  Future<DocumentSnapshot> getUserData() async{
    return await userDataCollection.doc(uid).get();
  }

}