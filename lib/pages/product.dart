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
            child: Text(product['description']),
          ),
          RaisedButton(
            child: Text('Delete ' + product['title']), 
            onPressed: () => {
              showDialog(context: context, builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Confirm deletion?"),
                    content: Text("This will delete this product, which cannot be undone."),
                    actions: <Widget>[
                      FlatButton(
                        child: Text('No, do not delete'),
                        onPressed: () {
                          Navigator.pop(context);
                        }
                      ),
                      FlatButton(
                        child: Text('DELETE'),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pop(context, true);
                        }
                      ),
                    ],
                  );
                }
              )
            }
          )
        ]
      )
    );
  }
}
