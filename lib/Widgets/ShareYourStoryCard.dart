import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShareYourStoryCard extends StatelessWidget{
  final String? date;
  final String? title;
  final String? image;
  final String? description;
  final Function onTap;


  const ShareYourStoryCard(
  {Key? key,
    this.date,
    this.title,
    this.image,
    this.description,
    required this.onTap
  }): super(key: key);



  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.only(left: 15,bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                     image: ExactAssetImage("images/test_profile.jpg"),
                    fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(5.0)
                ),
                width: 80,
                height: 80,
              )),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0,bottom: 4.0),
                    child: Text(
                      date!,
                      style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey, fontSize: 14),
                    ),
                  ),
                Text(
                  title!,
                  style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2.0, top: 4.0),
                  child: Text(
                    description!,
                    style: TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w500)
                  ),
                )
              ],
            )
          ],

        ),
      ),

      onTap: (){
        onTap();
      },
    );
  }

}