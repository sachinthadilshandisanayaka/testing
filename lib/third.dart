import 'package:flutter/material.dart';

class ThirdActivity extends StatefulWidget {
  ThirdActivity({Key key}) : super(key: key);

  @override
  _ThirdActivityState createState() => _ThirdActivityState();
}

class _ThirdActivityState extends State<ThirdActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: Center(
        child: Text('Hello there!'),
      ),
    );
  }
}
