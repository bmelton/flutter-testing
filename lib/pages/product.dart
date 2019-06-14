import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final Map product;

  ProductPage({this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product['title']),
      ),
      body: Column(
        children: <Widget>[
          Image.asset(product['image']),
          Center(
            child: Text('On the product page'),
          ),
          RaisedButton(
            child: Text('Delete ' + product['title']), 
            onPressed: () => Navigator.pop(context, true)
          )
        ]
      )
    );
  }
}
