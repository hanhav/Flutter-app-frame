import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static String tag = 'login'; // Tag for navigation
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
   
    // Username text input widget
    final username = TextFormField (
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Enter your username',
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        )
      )
    );

    // Password text input widget
    final passWord = TextFormField (
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Enter Password',
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        )
      )
    );

    // Login button widget
    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          // Navigate to dashboard without possibility to navigate back
          onPressed: () {
            Navigator.pushReplacementNamed(context, 'dashboard');
          },
          color: Colors.redAccent,
          child: Text('Log In', style: TextStyle(color: Colors.black)),
        ),
      );
    
    // Widget for moving to register screen
    final dontHaveAccount = Row (
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text('Dont have an account?', style: TextStyle(color: Colors.white)),
        FlatButton(
          child: Text('Register', style: TextStyle(color: Colors.redAccent)),
          onPressed: () {
              Navigator.pushNamed(context, 'register');
          },
        )
      ],
    );

    // Return login page
    return Scaffold(
      body: Container (
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center (
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            // List all created widgets as children and create spacers between them
            children: <Widget>[
              username,
              SizedBox(height: 8.0),
              passWord,
              SizedBox(height: 24.0),
              loginButton,
              SizedBox(height: 24.0),
              dontHaveAccount
            ],
        )
      )
      )
    );
  }
}