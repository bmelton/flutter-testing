import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String _emailValue = "";
  String _passwordValue = "";
  bool _rememberMe = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Please authenticate"),
      ),
      body: Container(
        margin: EdgeInsets.all(12.0),
        child: ListView(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Email address',
              ),
              onChanged: ((String value) => {
                setState(() {
                  _emailValue = value;
                })
              }),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
              onChanged: ((String value) => {
                setState(() => {
                  _passwordValue = value
                })
              })
            ),
            SizedBox(height: 12.0),
            SwitchListTile(
              title: Text("Remember me: "),
              value: _rememberMe,
              onChanged: (bool value) {
                setState(() {
                  _rememberMe = value;
                });
              }
            ),
            FlatButton(
                textColor: Theme.of(context).primaryColor,
                child: Text("Login"),
                onPressed: () {
                  print("Email: " + _emailValue);
                  print("Password: " + _passwordValue);
                  Navigator.pushReplacementNamed(context, '/home');
                }
            ),
          ]
        ),
        )
      );
  }
}