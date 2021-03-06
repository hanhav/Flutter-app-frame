import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  static String tag = 'dashboard'; 
  @override
  Widget build(BuildContext context) {

    final welcomeText = Row (
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
         Text('Welcome to HomeScreen', style: TextStyle(fontSize: 22.0, color: Colors.white)),
      ],
    );

    final navBoxesFirst = Row (
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding (
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Material (
            borderRadius: BorderRadius.circular(30),
            shadowColor: Colors.black38,
            elevation: 5.0,
            child: MaterialButton(
              minWidth: 260.0,
              height: 150.0,
              // When box is pressed navigate normally to search screen
              onPressed: () {
                Navigator.pushNamed(context, 'search');
              },
              color: Colors.white,
              child: Text('Search', style: TextStyle(color: Colors.black)),
            ),
          ),
        ),
        Padding (
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: Material (
            borderRadius: BorderRadius.circular(30),
            shadowColor: Colors.black38,
            elevation: 5.0,
            child: MaterialButton(
              minWidth: 260.0,
              height: 150.0,
              // When box is pressed navigate normally to listing screen
              onPressed: () {
                Navigator.pushNamed(context, 'listings');
              },
              color: Colors.white,
              child: Text('Listing', style: TextStyle(color: Colors.black)),
            ),
          ),
        )
      ],
    );

    final navBoxesSecond = Row (
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding (
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Material (
            borderRadius: BorderRadius.circular(30),
            shadowColor: Colors.black38,
            elevation: 5.0,
            child: MaterialButton(
              minWidth: 260.0,
              height: 150.0,
              // When box is pressed navigate normally to settings screen
              onPressed: () {
                Navigator.pushNamed(context, 'settings');
              },
              color: Colors.white,
              child: Text('Settings', style: TextStyle(color: Colors.black)),
            ),
          ),
        ),
        Padding (
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: Material (
            borderRadius: BorderRadius.circular(30),
            shadowColor: Colors.black38,
            elevation: 5.0,
            child: MaterialButton(
              minWidth: 260.0,
              height: 150.0,
              // When box is pressed navigate normally to profile screen
              onPressed: () {
                Navigator.pushNamed(context, 'profile');
              },
              color: Colors.white,
              child: Text('Profile', style: TextStyle(color: Colors.black)),
            ),
          ),
        )
      ],
    );

    // return dashboard/home screen
    return Scaffold(
      // Add topnav bar to screen
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home'),
      ),
      body: Container (
         decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
             welcomeText,
             SizedBox(height: 60.0),
             navBoxesFirst,
             navBoxesSecond,
          ],
        ),
      ),
      // Add Drawer navigation to dashboard/home screen
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(''),
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
            ),
            // List all possible navigation links to drawer
            ListTile(
              title: Text('Home'),
              // onTap to navigate normally to desired screen
              onTap: () {
                Navigator.pushNamed(context, 'dashboard');
              },
            ),
            ListTile(
              title: Text('Search'),
              // onTap to navigate normally to desired screen
              onTap: () {
                Navigator.pushNamed(context, 'search');
              },
            ),
            ListTile(
              title: Text('Listing'),
              // onTap to navigate normally to desired screen
              onTap: () {
                Navigator.pushNamed(context, 'listings');
              },
            ),
            ListTile(
              title: Text('Settings'),
              // onTap to navigate normally to desired screen
              onTap: () {
                Navigator.pushNamed(context, 'settings');
              },
            ),
            ListTile(
              title: Text('Profile'),
              // onTap to navigate normally to desired screen
              onTap: () {
                Navigator.pushNamed(context, 'profile');
              },
            ),
          ],
        ),
      ),
    );
  }
}