import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // hot reload, we no need to reload the code, auto reload it
    // because of buil(BuildContext)
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Face Scanner',
          style: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
          ),
        ),
        backgroundColor: Color.fromRGBO(0, 206, 201, 1.0),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // ->
        crossAxisAlignment: CrossAxisAlignment.center, // |
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.cyan,
              padding: EdgeInsets.all(20.0),
              child: Text('a'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.yellowAccent,
              padding: EdgeInsets.all(20.0),
              child: Text('b'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.tealAccent,
              padding: EdgeInsets.all(20.0),
              child: Text('c'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Color.fromRGBO(27, 156, 252, 1.0),
      ),
    );
  }
}
