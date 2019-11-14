import 'package:flutter/material.dart';

// Screen imports
import 'screens/Login.dart';
import 'screens/Register.dart';
import 'screens/DashBoard.dart';
import 'screens/Search.dart';
import 'screens/Listing.dart';
import 'screens/Settings.dart';
import 'screens/Profile.dart';

// Start application MyApp
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Routes for all imported widgets
  final routes = <String, WidgetBuilder> {
    'register': (context) => Register(),
    'dashboard': (context) => DashBoard(),
    'search': (context) => Search(),
    'listings': (context) => Listing(),
    'settings': (context) => Settings(),
    'profile': (context) => Profile(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title: 'Flutter Frame',
      debugShowMaterialGrid: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Montserrat'
      ),
      home: Login(), // First widget to be rendered after startup
      routes: routes, // When navigation is called App will seek for matching navigation string
    );
  }
}

