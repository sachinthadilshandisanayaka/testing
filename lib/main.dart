import 'package:flutter/material.dart';
import 'package:project02/second.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // hot reload, we no need to reload the code, auto reload it
    // because of build(BuildContext)
    return MaterialApp(
      title: 'Natigation Testing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstActivity(),
      
    );
  }
}

class FirstActivity extends StatelessWidget {
  const FirstActivity({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Navigation Text',
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
            child: RaisedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        SecondActivity(data: "Check passing value"),
                  ),
                );
              },
              child: Text('Go to Second'),
              color: Colors.cyan,
              padding: EdgeInsets.all(20.0),
            ),
          ),
          Expanded(
            flex: 2,
            child: RaisedButton(
              onPressed: () {},
              color: Colors.yellowAccent,
              padding: EdgeInsets.all(20.0),
              child: Text('Go to Third'),
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
