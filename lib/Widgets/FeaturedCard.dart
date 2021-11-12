import 'package:bee_foundation_app/Screens/WebScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeaturedCard extends StatelessWidget {
  final String text;
  final String webLink;
  final String backgroundImage;
  final Color? color;

  const FeaturedCard(
      {Key? key,
      required this.text,
      required this.webLink,
      this.color,
      required this.backgroundImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.all(6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: color,
            image: DecorationImage(
                image: NetworkImage(backgroundImage), fit: BoxFit.fill)
        ),
        width: 200,
        height: 125,
        child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold
                  ),
                ))),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return WebScreen(
                title: text,
                url: webLink);
          }),
        );
      },
    );
  }
}
