import "package:flutter/material.dart";

class ShareYourStoryScreen extends StatelessWidget {
  final String? date;
  final String? title;
  final String? description;
  final String? image;

  const ShareYourStoryScreen({
    Key? key,
    this.date,
    this.description,
    this.title,
    this.image
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xFFFFCD07)),
        title: Text("Share Your Story"),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top:10, left: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                date!,
                style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey, fontSize: 17),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:5, left: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                title!,
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
              ),
            )
          ),
          Container(
            margin: EdgeInsets.only(top:10,),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image!),
                    fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(5.0)
            ),
            width: 250,
            height: 250,
          ),
          Padding(
            padding: EdgeInsets.only(top:10, left: 20, right: 20 ),
            child: Flexible(
              child: Text(
                "On November 8, 2020, a new chapter of my life began when I had a brain aneurysm rupture, or as I like to call it, a brain fart.  As a person who takes care of myself, I never thought that something like this would happen to me, but it did.  Unfortunately, I learned that there are some crappy things that can happen in life that you have no control over.",
                softWrap: true,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            )
          )
        ],
      ),
    );
  }
}
