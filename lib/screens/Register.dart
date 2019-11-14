import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  static String tag = 'register'; // tag for navigation
  @override
  RegisterState createState() => RegisterState();
}

class RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {

    // Username text input widget
    final username = TextFormField(
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

    // Firstname text input widget
    final firstName = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Enter your First Name',
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        )
      )
    );

    // Lastname text input widget
    final lastName = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Enter your Last Name',
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        )
      )
    );

    // Email text input widget
    final email  = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Enter your Email',
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        )
      )
    );

    // Password text input widget
    final passWord = TextFormField(
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

    // Register button text input widget
    final registerButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: MaterialButton(
        minWidth: 200.0,
        height: 42.0,
        onPressed: () {
          // Navigate to dashboard without possibility to navigate back
          Navigator.pushReplacementNamed(context, 'dashboard');
        },
        color: Colors.redAccent,
        child: Text('Register', style: TextStyle(color: Colors.white)),
      ),
    );

    // Widget for moving back to Login screen
    final allreadyHaveAnAccount = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text('Allready have an account?',style: TextStyle(color: Colors.black)),
        FlatButton(
          child: Text('Log In', style: TextStyle(color: Colors.redAccent)),
          // Navigate normally starting screen
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        )
      ],);

    // Return register page
    return Scaffold(
      backgroundColor: Colors.white,
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
            firstName,
            SizedBox(height: 8.0),
            lastName,
            SizedBox(height: 8.0),
            email,
            SizedBox(height: 8.0),
            passWord,
            SizedBox(height: 24.0),
            registerButton,
            SizedBox(height: 24.0),
            allreadyHaveAnAccount,
          ],
        )
      )
     )
    );
  }
}