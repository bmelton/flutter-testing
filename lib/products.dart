import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './pages/product.dart';

class Products extends StatelessWidget {
  final List<Map> products;

  Products([this.products = const []]);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed<bool>(context, '/product/' + index.toString())
              .then((value) {
                if(value == true) {
                }
              });
            },
            child: Image.asset(products[index]['image']),
          ),
          Padding( 
            padding: EdgeInsets.all(12.0),
            child: Text(products[index]['title'])
          ),
        ]
      )
    );
  }

  @override
  Widget build(BuildContext build) {
    Widget productCard = Container(
      child: Center(
        child: Text('No products found.'),
      )
    );

    if(products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } 

    return productCard;
  }
}