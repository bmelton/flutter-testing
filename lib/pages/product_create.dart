import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addProducts;

  ProductCreatePage(this.addProducts);

  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePageState();
  }
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String titleValue = '';
  String descriptionValue = '';
  double priceValue;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(12.0),
        child: ListView(
          children: <Widget>[
            TextField(
              autofocus: false,
              decoration: const InputDecoration(
                hintText: 'What is the name of the product?',
                labelText: 'Title',
              ),
              onChanged: (String value) {
                setState(() {
                  titleValue = value;
                });
              },
            ),
            TextField(
                maxLines: 4,
                decoration: const InputDecoration(
                  hintText: 'Describe the product',
                  labelText: 'Description',
                ),
                onChanged: (String value) {
                  setState(() {
                    descriptionValue = value;
                  });
                }),
            TextField(
              decoration: const InputDecoration(
                icon: Icon(Icons.money_off),
                hintText: '0.00',
                labelText: 'Price',
              ),
              keyboardType: TextInputType.number,
              onChanged: (String value) {
                setState(() {
                  priceValue = double.parse(value);
                });
              },
            ),
            FlatButton(
              child: Text('Save'),
              onPressed: (() {
                print(titleValue);
                print(descriptionValue);
                print(priceValue);

                widget.addProducts({
                  'title': titleValue,
                  'description': descriptionValue,
                  'price': priceValue,
                  'image': 'assets/food.jpg',
                });
              }),
            ),
          ]));
    }
}
