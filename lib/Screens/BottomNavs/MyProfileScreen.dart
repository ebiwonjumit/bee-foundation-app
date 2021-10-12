import 'package:bee_foundation_app/Widgets/YellowFormButton.dart';
import 'package:bee_foundation_app/dbs/services/AuthService.dart';
import 'package:bee_foundation_app/dbs/services/StorageService.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MyProfileScreen extends StatefulWidget {
  @override
  MyProfileScreenState createState() => MyProfileScreenState();
}

class MyProfileScreenState extends State<MyProfileScreen> {
  //Services
  StorageService _storageService = StorageService();
  AuthService _authService = AuthService();
  String img = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future<String> imageUrl = _storageService
        .downloadProfileImage(_authService.getUser()!.uid)
        .then((String result) {
      setState(() {
        img = result;
      });
      return "";
    });
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 20),
              child: Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: CachedNetworkImageProvider(img))),
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
          Padding(
              padding: EdgeInsets.only(top: 20, bottom: 5, left: 15, right: 15),
              child: YellowFormButton(
                text: "Log Out",
                width: 100.0,
                height: 40.0,
                borderRadius: 20,
                onPressed: () async {
                  _authService.logout();
                },
              )),
        ],
      ),
    );
  }
}
