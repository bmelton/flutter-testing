import 'package:flutter/material.dart';

class ProductEditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text("Edit your products")
          )
        ] 
      )
    );
  }

}