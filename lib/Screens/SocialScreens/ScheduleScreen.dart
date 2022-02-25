import 'package:bee_foundation_app/Widgets/BlackHeaderItem.dart';
import 'package:bee_foundation_app/Widgets/YellowListItem.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  @override
  ScheduleScreenState createState() => ScheduleScreenState();
}

class ScheduleScreenState extends State<ScheduleScreen> {
  static List<String> months = [
    "JAN",
    "FEB",
    "MAR",
    "ABR",
    "MAY",
    "JUN",
    "JUL",
    "AUG",
    "SEP",
    "OCT",
    "NOV",
    "DEC"
  ];

  // final items = List<GrandItem>.generate(
  //     12,
  //     (i) => i % 3 == 0
  //         ? MonthItem(months[i])
  //         : DateItem("22", "Team Kenny Bryden Golf Tournament",
  //             "Pine Hills Country Club | 9:00 A.M.", () {}));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Schedule & Events"),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Color(0xFFFFCD07),
        ),
        backgroundColor: Colors.white,
      ),
      // body: ListView.separated(
      //   shrinkWrap: true,
      //   padding: EdgeInsets.only(top: 25, bottom: 25),
      //   itemCount: items.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     final item = items[index];
      //     return Container(
      //       child: item.buildItem(context),
      //     );
      //   },
      //   separatorBuilder: (BuildContext context, int index) => Divider(
      //     color: Color(0xFFDDDDDD),
      //   ),
      // ),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 25, bottom: 25),
        itemBuilder: (context, index) {
          return Column(
            children: [
              MonthWidget(months[index]),
              Divider(
                color: Color(0xFFDDDDDD),
              ),
              ListView.separated(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                itemBuilder: (context, index) {
                  return DateWidget("22", "Team Kenny Bryden Golf Tournament",
                                  "Pine Hills Country Club | 9:00 A.M.", () {});
                },
                separatorBuilder: (BuildContext context, int index) => Divider(
                  color: Color(0xFFDDDDDD),
                ),

                itemCount: 3,
                shrinkWrap: true,
              ),
              Divider(
                color: Color(0xFFDDDDDD),
              ),
            ],
          );
        },
        itemCount: 12,
      ),
    );
  }
}

class MonthWidget extends StatelessWidget {
  final String text;

  MonthWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: Container(
          padding: EdgeInsets.only(top: 10, bottom: 5, left: 24),
          width: 80,
          height: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
              color: Colors.black),
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}

class DateWidget extends StatelessWidget{
  final String iconText;
  final String titleText;
  final String subtitleText;
  final Function onTap;

  DateWidget(this.iconText, this.titleText, this.subtitleText, this.onTap);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 2, top: 5, bottom: 5),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Color(0xFFFFCD07)),
                child: Center(
                    child: Text(
                      iconText,
                      style: TextStyle(color: Colors.white, fontSize: 21),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                        child: Text(
                          titleText,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                          softWrap: true,
                        )),
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
        onTap;
      },
    );
  }

}

abstract class GrandItem {
  Widget buildItem(BuildContext context);
}
class MonthItem implements GrandItem {
  final String text;

  MonthItem(this.text);

  @override
  Widget buildItem(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: Container(
          padding: EdgeInsets.only(top: 10, bottom: 5, left: 24),
          width: 80,
          height: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
              color: Colors.black),
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}
class DateItem implements GrandItem {
  final String iconText;
  final String titleText;
  final String subtitleText;
  final Function onTap;

  DateItem(this.iconText, this.titleText, this.subtitleText, this.onTap);

  @override
  Widget buildItem(BuildContext context) {
    return InkWell(
      child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 2, top: 5, bottom: 5),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Color(0xFFFFCD07)),
                child: Center(
                    child: Text(
                  iconText,
                  style: TextStyle(color: Colors.white, fontSize: 21),
                )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                        child: Text(
                      titleText,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: true,
                    )),
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
        onTap;
      },
    );
  }
}
