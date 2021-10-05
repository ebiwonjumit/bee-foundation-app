import 'package:bee_foundation_app/Widgets/YellowListItem.dart';
import 'package:bee_foundation_app/dbs/services/AuthService.dart';
import 'package:bee_foundation_app/dbs/services/StorageService.dart';
import 'package:flutter/material.dart';

class MyProfileScreen extends StatefulWidget {
  @override
  MyProfileScreenState createState() => MyProfileScreenState();
}

class MyProfileScreenState extends State<MyProfileScreen> {

  //Services
  StorageService _storageService = StorageService();
  AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    Future<String> imageUrl = _storageService.downloadProfileImage(_authService.getUser()!.uid);
    String img = imageUrl.toString();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 20),
              child: CircleAvatar(
                radius: 75,
                backgroundImage: NetworkImage(img),
              )),
          Padding(
              padding: EdgeInsets.only(top: 15, bottom: 7),
              child: Text(
                'Jeffery Stuggard',
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                    color: Color(0xFF060606)),
              )),
          Container(
            padding: EdgeInsets.only(top:15, left: 15),
            alignment: Alignment.topLeft,
            child: Text(
              "Past Entries",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.all(10),
            itemCount: 7,
            itemBuilder: (BuildContext context, int index) {
              if(index == 0 || index == 5){
                return Container();
              }
              return YellowListItem(iconText: "08", subtitleText: "Here is some intro text of the respect.", titleText: "Here is the title of the daily prompt from this day.", onTap:(){});
            },
            separatorBuilder: (BuildContext context, int index) => Divider(
              color: Color(0xFFDDDDDD),
            ),
          ),
        ],
      ),
    );
  }
}
