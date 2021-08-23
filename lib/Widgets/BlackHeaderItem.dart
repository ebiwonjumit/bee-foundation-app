import 'package:flutter/material.dart';

class BlackHeaderItem extends StatelessWidget {
  final String text;

  const BlackHeaderItem({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(8)),
        color: Colors.black
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
    );
  }
}
