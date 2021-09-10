import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialScreenItem extends StatelessWidget {
  final String text;
  final String socialLink;

  const SocialScreenItem({Key? key, required this.text, required this.socialLink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.only(left: 2, right: 2),
        child: ListTile(
          leading: ImageIcon(
            AssetImage(images(text)),
            color: Colors.black,
          ),
          title: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          trailing: Text(
            username(text),
            softWrap: true,
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
        ),
      ),
      onTap: () {
        whichURL(socialLink,text);
      },
    );
  }

  whichURL(String url, String text) async{
    switch (text){
      case "Facebook":
        String fbProtocol;
        if(Platform.isIOS){
          fbProtocol = "fb://profile/1443707652564234";
        }
        else{
          fbProtocol = "fb://page/1443707652564234";
        }
        try{
          bool launched = await launch(fbProtocol);
          if(!launched){
            await launch(url);
          }
        } catch(e){
          await _launchURL(url);
        }
        break;

      case "Instagram":
        _launchURL(url);
        break;

      case "Twitter":
        _launchURL(url);
        break;

      default:
        break;

    }

  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  String images(String text) {
    switch (text) {
      case "Facebook":
        return "images/facebook.png";
      case "Instagram":
        return "images/instagram.png";
      case "Twitter":
        return "images/twitter.png";
      default:
        return "";
    }
  }

  String username(String text) {
    if (text == "Facebook") {
      return "The Bee Foundation";
    } else {
      return "@thebeefoundation";
    }
  }
}
