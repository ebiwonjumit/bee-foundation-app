import 'package:flutter/material.dart';

class BottomTabItem extends StatelessWidget {
  final String text;
  final AssetImage icon;
  final bool isSelected;
  final VoidCallback onTap;

  const BottomTabItem(
      {Key? key,
      required this.icon,
      required this.text,
      required this.isSelected,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ImageIcon(
            icon,
            color: isSelected ? Colors.grey : Color(0xFF8A817C),
          ),
          Text(
            text,
            style: TextStyle(
              color: isSelected ? Colors.grey : Color(0xFF8A817C),
            ),
          )
        ],
      ),
    ),
      onTap: onTap,
    );
  }

}


