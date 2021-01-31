import 'package:flutter/material.dart';

class TwoTab extends StatefulWidget {
  TwoTab({Key key}) : super(key: key);

  @override
  _TwoTabState createState() => _TwoTabState();
}

class _TwoTabState extends State<TwoTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Second Tab'),
    );
  }
}
