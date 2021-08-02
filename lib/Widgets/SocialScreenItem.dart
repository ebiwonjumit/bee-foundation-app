import 'package:flutter/material.dart';

class SocialScreenItem extends StatelessWidget {
  final String text;

  const SocialScreenItem({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.only(left: 2, right: 2),
        child: ListTile(
          leading: ImageIcon(
            AssetImage(images(text)),
          ),
          title: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          trailing: Text(
            username(text),
            softWrap: true,
            style: TextStyle(fontSize: 7, color: Colors.grey),
          ),
        ),
      ),
      onTap: () {},
    );
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
