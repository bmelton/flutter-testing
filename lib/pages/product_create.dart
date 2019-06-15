import 'package:flutter/material.dart';

class ProductCreatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: RaisedButton(
              child: Text("Save"),
              onPressed: () {
                showModalBottomSheet(context: context, builder: (BuildContext context) {
                  return Center(child: Text('Hi')); 
                });
              }
            ),
          )
        ] 
      )
    );
  }

}