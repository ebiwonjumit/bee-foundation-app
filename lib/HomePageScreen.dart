import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Spacer(
                flex: 2
              ),
              Center(child: Text('Welcome, There is helpful content below')),
              Spacer(flex: 2),
              Container(
                height: 500,
                child:               ListView(
                  padding: EdgeInsets.all(10),
                  children: <Widget>[
                    Container(
                        height: 50,
                        color: Colors.amber[600],
                        child: const Center(child: Text('Helpful Content 1'))),
                    Container(
                        height: 50,
                        color: Colors.amber[500],
                        child: const Center(child: Text('Helpful Content 2'))),
                    Container(
                        height: 50,
                        color: Colors.amber[400],
                        child: const Center(child: Text('Helpful Content 3'))),
                    Container(
                        height: 50,
                        color: Colors.amber[300],
                        child: const Center(child: Text('Helpful Content 4'))),
                  ],
                )
              )


            ]));
  }
}
