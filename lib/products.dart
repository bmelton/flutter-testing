import 'package:flutter/material.dart';

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
