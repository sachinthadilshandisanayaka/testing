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
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text('hello'),
                ),
                Container(
                  child: Text('bye'),
                ),
              ],
            ),
          ),
          FlatButton(
            // cant use FloatingButton, no access to 'child'
            onPressed: () {},
            color: Colors.blueAccent,
            child: Text('two'),
          ),
          FlatButton(
            // cant use FloatingButton, no access to 'child'
            onPressed: () {},
            color: Colors.blueAccent,
            child: Text('one'),
          ),
          FlatButton(
            // cant use FloatingButton, no access to 'child'
            onPressed: () {},
            color: Colors.blueAccent,
            child: Text('three'),
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
