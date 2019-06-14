import 'package:dailyconnection/product_manager.dart';
import 'package:flutter/material.dart';

import '../product_manager.dart';
import '../pages/manager.dart';

class HomePage extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text("Manage"),
              onTap: (() {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => ManagerPage())
                );
              }),
            ),
          ]
        ),
      ),
      appBar: AppBar(
        title: Text('Daily Connection'),
      ),
      body: ProductManager(),
    );
  }
}