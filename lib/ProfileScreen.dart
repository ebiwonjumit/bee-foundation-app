import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: Column(
          children: <Widget>[
            Container(height: 10),
            ClipOval(
                child: Container(
              color: Colors.amber[600],
              height: 100.0,
              width: 100.0,
              child: Center(
                  child: Text(
                'Profile Picture',
                style: TextStyle(color: Colors.black, fontSize: 24),
                textAlign: TextAlign.center,
              )),
            )),
            Container(
              padding:EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('Name of Person', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25))),
            Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sed felis id risus vulputate convallis nec at neque. Nunc ultrices placerat arcu nec bibendum. Ut non velit vel magna consequat imperdiet quis eu eros. Proin non venenatis lorem. Suspendisse vehicula gravida dignissim. Phasellus diam turpis, rhoncus ut lorem a, rhoncus accumsan dolor. Cras tincidunt laoreet tortor, eget posuere urna. Morbi arcu magna, maximus nec lacinia vel, volutpat id ligula. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
                  textAlign: TextAlign.center,
                ))
          ],
        ));
  }
}
