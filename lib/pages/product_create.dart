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
                icon: Icon(Icons.attach_money),
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
            SizedBox(height: 20.0,),
            RaisedButton(
              color: Colors.lime,
              textColor: Colors.black,
              child: Text(
                'Save',
              ),
              onPressed: (() {
                widget.addProducts({
                  'title': titleValue,
                  'description': descriptionValue,
                  'price': priceValue,
                  'image': 'assets/food.jpg',
                });
                Navigator.pushReplacementNamed(context, '/home');
              }),
            ),
          ]));
    }
}
