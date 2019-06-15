import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Products extends StatelessWidget {
  final List<Map> products;

  Products(this.products);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed<bool>(context, '/product/' + index.toString());
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
    Widget productCards = Container(
      child: Center(
        child: Text('No products found.'),
      )
    );

    if(products.length > 0) {
      productCards = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } 

    return productCards;
  }
}