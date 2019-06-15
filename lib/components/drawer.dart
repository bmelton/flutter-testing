import 'package:flutter/material.dart';

class ApplicationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
            title: Text('Choose'),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: (() {
              Navigator.pushReplacementNamed(context, '/home');
            }),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Manage"),
            onTap: (() {
              Navigator.pushReplacementNamed(context, '/manageProducts');
            }),
          ),
        ]
      ),
    );
  }
}