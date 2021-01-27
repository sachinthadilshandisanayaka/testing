import 'dart:ui';

import 'package:flutter/material.dart';

class SecondActivity extends StatefulWidget {
  final String data;
  SecondActivity({Key key, @required this.data}) : super(key: key);

  @override
  _SecondActivityState createState() => _SecondActivityState(data);
}

class _SecondActivityState extends State<SecondActivity> {
  final String getData;
  _SecondActivityState(this.getData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Secon page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Second Activity',
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            Text(
              getData,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
