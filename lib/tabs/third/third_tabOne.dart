import 'package:flutter/material.dart';

class OneTab extends StatefulWidget {
  OneTab({Key key}) : super(key: key);

  @override
  _OneTabState createState() => _OneTabState();
}

class _OneTabState extends State<OneTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Tab One'),
    );
  }
}
