import 'package:cloud_firestore/cloud_firestore.dart';

class BeeDatabase{

  final CollectionReference dailyPromptCollection = FirebaseFirestore.instance.collection("dailyPrompt");
  final CollectionReference featuredEventsCollection = FirebaseFirestore.instance.collection("featuredEvents");
  final Stream<QuerySnapshot> featuredEventsStream = FirebaseFirestore.instance.collection("featuredEvents").orderBy('Date').snapshots();


  //Get dailyPrompt QuerySnapshot
  Future<DocumentSnapshot> getDailyPromptData() async{
    QuerySnapshot snapshot = await dailyPromptCollection.orderBy('Date').limit(1).get();
    return snapshot.docs[0];
  }





}