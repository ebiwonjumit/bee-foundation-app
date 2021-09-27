import 'package:flutter/material.dart';

class FeaturedCard extends StatelessWidget {
  final String text;
  final Function onTap;
  final Color color;

  const FeaturedCard(
      {Key? key, required this.text, required this.onTap, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.all(6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: color),
        width: 200,
        height: 125,
        child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ))),
      ),
      onTap: (){
        onTap();
      },
    );
  }
}
