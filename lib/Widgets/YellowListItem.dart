import 'package:flutter/material.dart';

class YellowListItem extends StatelessWidget {
  final String iconText;
  final String titleText;
  final String subtitleText;
  final Function onTap;

  const YellowListItem(
      {Key? key,
      required this.iconText,
      required this.titleText,
      required this.subtitleText,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
          padding: const EdgeInsets.only(left: 2, right: 2),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: Color(0xFFFFCD07)
                ),
                child: Center(
                  child: Text(
                  iconText,
                  style: TextStyle(color: Colors.white, fontSize: 21),
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      titleText,
                      style: TextStyle(fontWeight: FontWeight.w500,),
                      softWrap: true,
                    ),
                    Text(
                      subtitleText,
                      style: TextStyle(fontSize: 12),
                      softWrap: true,
                    )
                  ],
                ),
              )
            ],
          )),
      onTap: () {
        onTap();
      },
    );
  }
}
