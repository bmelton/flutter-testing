import 'package:flutter/material.dart';
import 'product_manager.dart';

const _appName = "Daily Connection";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<String> _products = ['Food Tester'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
              elevation: 0.0,
              title: Text(_appName)),
          body: ProductManager(),
        ));
  }
}
