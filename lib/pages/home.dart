import 'package:dailyconnection/product_manager.dart';
import 'package:flutter/material.dart';

import '../product_manager.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Connection'),
      ),
      body: ProductManager(),
    );
  }
}