import 'package:flutter/material.dart';

class YellowFormButton extends StatelessWidget {
  final String text;
  final Function onTap;

  const YellowFormButton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        color: Color(0xFFFFCD07),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ),
      ),

      onTap: () async {onTap;},
    );
  }
}
