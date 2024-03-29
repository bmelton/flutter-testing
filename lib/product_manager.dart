import 'package:flutter/material.dart';
import 'products.dart';

class ProductManager extends StatelessWidget {
  final List<Map> products;
  final Function addProduct;
  final Function deleteProduct;

  ProductManager(this.products, this.addProduct, this.deleteProduct);

  // final Map<String, String> startingProduct;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(2.0),
      ),
      Expanded( child: Products(products))
    ]);
  }
}
