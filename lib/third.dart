import 'package:flutter/material.dart';

class ThirdActivity extends StatefulWidget {
  ThirdActivity({Key key}) : super(key: key);

  @override
  _ThirdActivityState createState() => _ThirdActivityState();
}

class _ThirdActivityState extends State<ThirdActivity> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Third Activity'),
    );
  }
}
