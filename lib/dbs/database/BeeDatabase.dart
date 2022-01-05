import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BeeDatabase {
  final CollectionReference dailyPromptCollection =
  FirebaseFirestore.instance.collection("dailyPrompt");
  final CollectionReference featuredEventsCollection =
  FirebaseFirestore.instance.collection("featuredEvents");
  final CollectionReference theBuzzCollection =
  FirebaseFirestore.instance.collection("theBuzz");
  final Stream<QuerySnapshot> featuredEventsStream = FirebaseFirestore.instance
      .collection("featuredEvents")
      .orderBy('Date')
      .snapshots();


  //Get The Buzz QuerySnapshots
  Future<QuerySnapshot> getTheBuzz() async{
    return theBuzzCollection.get();
  }

  //Get FeaturedEvents QuerySnapshots
  Future<QuerySnapshot> getFeaturedEvents() async{
    return featuredEventsCollection.orderBy('Date').get();
  }
  //Get dailyPrompt QuerySnapshot
  Future<DocumentSnapshot> getDailyPromptData() async {
    QuerySnapshot snapshot =
    await dailyPromptCollection.orderBy('Date').limit(1).get();
    return snapshot.docs[0];
  }

// Get all Featured Events
  Future<List<String>> getFeaturedEventNames() async {
    QuerySnapshot qshot = await featuredEventsCollection.orderBy('Date').get();
    List<String> answer = List.empty();
    List<DocumentSnapshot> events = qshot.docs;
    events.forEach((element) {answer.add(element['Event Name']);});
    return answer;
  }

}
