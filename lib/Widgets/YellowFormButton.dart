import 'package:flutter/material.dart';

class YellowFormButton extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final double borderRadius;
  final Function onPressed;

  const YellowFormButton({Key? key, required this.text, required this.width, required this.height, required this.borderRadius, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xFFFFCD07)),
          minimumSize: MaterialStateProperty.all(Size(width,height)),

        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 17),
          ),
        ),


      onPressed: (){onPressed();},
    );
  }
}
