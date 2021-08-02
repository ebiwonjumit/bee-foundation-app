import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xFFFFCD07)
        ),
        title: Text("About Us"),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child:Text(
              "Who We Are",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
            ),
          )),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Flexible(
                child: Text(
              "In May 2014, Christine Kondra (Doherty) along with her sister, Erin Kreszl (Doherty) founded The Bee Foundation inspired by their cousin, Jennifer Sedney, who died December 25, 2013 at the age of 27 from a ruptured brain aneurysm. Christine, a previous biopharmaceutical director, successful entrepreneur and private chef, and Erin, an institutional investment consultant and University of Michigan Ross School of Business graduate, are dedicated to creating a vibrant and dynamic organization that will achieve its vision by focusing on their mission and leveraging their network and previous experiences.",
              softWrap: true,
            )),
          ),
          Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child:Text(
                  "Our Mission",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                ),
              )),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Flexible(
                child: Text(
                  "The mission of The Bee Foundation is to raise awareness of brain aneurysms and increase funding for innovative research that changes lives.\n\n\nWe are building a robust and dynamic brain aneurysm research community with our Scientific Advisory Board, donors and network of researchers interested in grant funding to support meaningful research. Our community, anchored by our grant recipients, is committed to advancing brain aneurysm research",
                  softWrap: true,
                )),
          ),
        ],
      ),
    );
  }
}
