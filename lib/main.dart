import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Face Scanner'),
          backgroundColor: Color.fromRGBO(0, 206, 201, 1.0),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            'Scanning your face',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Color.fromRGBO(99, 110, 114, 1.0),
              fontFamily: 'SansitaSwashed',
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text('click'),
          backgroundColor: Color.fromRGBO(27, 156, 252, 1.0),
        ),
      ),
    ));
