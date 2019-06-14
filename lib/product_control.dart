import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;

  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Theme.of(context).accentColor,
      onPressed: () { 
        addProduct({
          'title': 'Sweets',
          'image': 'assets/food.jpg'
        }); 
      },
      icon: Icon(Icons.add)
    );
  }
}
