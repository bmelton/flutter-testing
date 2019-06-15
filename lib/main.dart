import 'package:flutter/material.dart';

import './pages/home.dart';
import './pages/manager.dart';
import './pages/product.dart';
import './pages/auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<Map> _products = [];

  void _addProduct(Map product) {
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.indigo,
          textTheme: TextTheme(
            body1: TextStyle(fontSize: 16.0),
          ),
        ),
        debugShowCheckedModeBanner: false,
        // home: AuthPage(),
        routes: {
          '/': (BuildContext context) => HomePage(
            _products, 
            _addProduct, 
            _deleteProduct
          ),
          '/': (BuildContext context) => AuthPage(),
          '/auth': (BuildContext context) => AuthPage(),
          '/home': (BuildContext context) => HomePage(_products, _addProduct, _deleteProduct),
          '/manageProducts': (BuildContext context) => ManagerPage(
            _products, _addProduct, _deleteProduct
          ),
        },
        onGenerateRoute: (RouteSettings settings) {
          final List<String> pathElements = settings.name.split("/");
          if(pathElements[0] != '') {
            return null;
          } 

          if(pathElements[1] == "product") {
            final int index = int.parse(pathElements[2]);

            return MaterialPageRoute<bool>(
              builder: (BuildContext context) => ProductPage(
                product: _products[index]
              )
            );
          }

          return null;
        },
        onUnknownRoute: (RouteSettings settings) {
          return new MaterialPageRoute(builder: (BuildContext context) =>
            HomePage(_products, _addProduct, _deleteProduct));
        },
      );
  }
}
