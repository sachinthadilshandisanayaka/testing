import 'package:flutter/material.dart';

class SecondActivity extends StatefulWidget {
  final String data;
  SecondActivity({Key key, @required this.data}) : super(key: key);

  @override
  _SecondActivityState createState() => _SecondActivityState();
}

class _SecondActivityState extends State<SecondActivity> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Second Activity'),
    );
  }
}
