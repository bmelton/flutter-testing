import 'package:flutter/material.dart';
import '../pages/home.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Please authenticate"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Log in."),
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (BuildContext context) => HomePage()
            ));
          },
        )
      )
    );
  }
}