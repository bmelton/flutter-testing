import 'package:flutter/material.dart';
import 'product_manager.dart';

import './pages/auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.lime,
          textTheme: TextTheme(
            body1: TextStyle(fontSize: 16.0),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: AuthPage()
      );
  }
}
