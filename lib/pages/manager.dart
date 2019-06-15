import 'package:flutter/material.dart';

import 'product_create.dart';
import 'product_edit.dart';
import '../components/drawer.dart';

class ManagerPage extends StatelessWidget {
  final List<Map> products;
  final Function addProduct;
  final Function deleteProduct;

  ManagerPage(this.products, this.addProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: ApplicationDrawer(),
        appBar: AppBar(
          title: Text("Manager"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.add),
                text: "Create"
              ),
              Tab(
                icon: Icon(Icons.edit),
                text: "Edit"
              ),
            ],
          )
        ),
        body: TabBarView(
          children: <Widget>[
            ProductCreatePage(addProduct),
            ProductEditPage(),
          ],
        )
      )
    );
  }
}