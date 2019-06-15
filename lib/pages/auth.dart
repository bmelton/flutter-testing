import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Please authenticate"),
      ),
      body: Container(
        margin: EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(
                labelText: 'username',
              ),
              onChanged: ((String value) => {
                print("Username: " + value)
              }),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'password',
              ),
              onChanged: ((String value) => {
                print("Password: " + value)
              })
            ),
            RaisedButton(
              child: Text("Login"),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
            )
          ]
        ),
        )
      );
  }
}