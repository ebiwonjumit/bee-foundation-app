import 'package:flutter/material.dart';

class MoreScreenItem extends StatelessWidget{
  final String text;
  final Function onTap;

  const MoreScreenItem(
  {Key? key,
    required this.text,
    required this.onTap
  }): super(key: key);


  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.only(left: 2.0),
        child: ListTile(
          title: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ),
      onTap: (){
        onTap();
      },
    );
  }

}