import 'package:dailyconnection/product_manager.dart';
import 'package:flutter/material.dart';

import '../components/drawer.dart';
import '../product_manager.dart';

class HomePage extends StatelessWidget {
  final List<Map> products;
  final Function addProduct;
  final Function deleteProduct;

  HomePage(this.products, this.addProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ApplicationDrawer(),
      appBar: AppBar(
        title: Text('Daily Connection'),
      ),
      body: ProductManager(products, addProduct, deleteProduct),
    );
  }
}