import 'package:bee_foundation_app/Widgets/BlackHeaderItem.dart';
import 'package:bee_foundation_app/Widgets/YellowListItem.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  @override
  ScheduleScreenState createState() => ScheduleScreenState();
}

class ScheduleScreenState extends State<ScheduleScreen> {
  final items = List<GrandItem>.generate(
      50,
      (i) => i % 3 == 0
          ? MonthItem("JAN")
          : DateItem("22", "Team Kenny Bryden Golf Tournament",
              "Pine Hills Country Club | 9:00 A.M.", () {}));

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
      body: ListView.separated(
        shrinkWrap: true,
        padding: EdgeInsets.all(10),
        itemCount: items.length + 2,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0 || index == items.length + 1) {
            return Container();
          }
          final item = items[index];
          return Container(
            child: item.buildItem(context),
          );
        },
        separatorBuilder: (BuildContext context, int index) => Divider(
          color: Color(0xFFDDDDDD),
        ),
      ),
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
          padding: EdgeInsets.only(top: 12, bottom: 5, left: 23),
          width: 80,
          height: 38,
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
                    Text(
                      titleText,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
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
        onTap;
      },
    );
  }
}
