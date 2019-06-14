import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products([this.products = const []]);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Padding( 
            padding: EdgeInsets.all(12.0),
            child: Text(products[index])
          )
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

/*
class Products extends StatelessWidget {
  final List<String> products;

  Products([this.products = const []]);

  @override
  Widget build(BuildContext build) {
    return Column(
        children: products
            .map((product) => Card(
                    child: Column(children: <Widget>[
                  Image.asset('assets/food.jpg'),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      product,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  )
                ])))
            .toList());
  }
}
*/
