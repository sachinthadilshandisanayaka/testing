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
      body: Center(
        child: Image.asset('assets/photo-03.jpeg'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Color.fromRGBO(27, 156, 252, 1.0),
      ),
    );
  }
}
