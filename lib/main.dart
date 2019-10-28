import 'package:flutter/material.dart';

import 'screens/Login.dart';
import 'screens/Register.dart';
import 'screens/DashBoard.dart';
import 'screens/Search.dart';
import 'screens/Listing.dart';
import 'screens/Settings.dart';
import 'screens/Profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
      home: Login(),
      routes: routes,
    );
  }
}

