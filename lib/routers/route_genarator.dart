import 'package:flutter/material.dart';
import 'package:project02/main.dart';
import 'package:project02/second.dart';
import 'package:project02/third.dart';

class RouteGenerator {
  static Route<dynamic> gener  ateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => FirstActivity());
        break;

      case '/second':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => SecondActivity(
              data: args,
            ),
          );
        }
        return _errorRoute();
        break;

      case '/third':
        return MaterialPageRoute(
          builder: (_) => ThirdActivity(),
        );
        break;

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
