import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  static String tag = 'profile'; 
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile'),
      ),
      body: Container (
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Background.png"),
            fit: BoxFit.cover,
          ),
        ),
         child: Center (
           child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
              CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage('assets/ProfilePicture.png'),
              ),
              SizedBox(
                height: 80.0,
                width: 400,
                child: Divider(color: Colors.teal,),
              ),
              Container (
                color: Colors.white,
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 70.0),
                child: Row(
                  children: <Widget>[
                    Text('Username')
                  ],
                ),
              ),
              Container (
                color: Colors.white,
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 70.0),
                child: Row(
                  children: <Widget>[
                    Text('First name')
                  ],
                ),
              ),
              Container (
                color: Colors.white,
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 70.0),
                child: Row(
                  children: <Widget>[
                    Text('Last name')
                  ],
                ),
              ),
              Container (
                color: Colors.white,
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 70.0),
                child: Row(
                  children: <Widget>[
                    Text('Email')
                  ],
                ),
              ),
             ],
           ),
         ),
      ),
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
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, 'dashboard');
              },
            ),
            ListTile(
              title: Text('Search'),
              onTap: () {
                Navigator.pushNamed(context, 'search');
              },
            ),
            ListTile(
              title: Text('Listing'),
              onTap: () {
                Navigator.pushNamed(context, 'listings');
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                Navigator.pushNamed(context, 'settings');
              },
            ),
            ListTile(
              title: Text('Profile'),
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