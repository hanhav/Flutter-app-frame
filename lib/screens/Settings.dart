import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  static String tag = 'settings'; 
  @override
  Widget build(BuildContext context) {

    // Return Settings screen
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Settings'),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
          children: <Widget>[
            ListTile(
              title: Text('User Settings'),
              // Add navigation to tile
              onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailScreen())
              );
            },
            ),
            ListTile(
              title: Text('Payment Options'),
            ),
            ListTile(
              title: Text('Security and login'),
            ),
            ListTile(
              title: Text('Linked applications'),
            ),
            ListTile(
              title: Text('Privacy Settings'),
            ),
            ListTile(
              title: Text('Application access settings'),
            ),
          ],
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
              title: Text('Listings'),
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

// Details screen can be also imported from another file
class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return user settings screen 
    return Scaffold(
      appBar: AppBar(
        title: Text('User Settings'),
      ),
       body: ListView(
        padding: EdgeInsets.all(8),
          children: <Widget>[
            ListTile(
              title: Text('Change username'),
            ),
            ListTile(
              title: Text('Change password'),
            ),
            ListTile(
              title: Text('Profile status'),
            ),
            ListTile(
              title: Text('Change profile picture'),
            ),
            ListTile(
              title: Text('Language'),
            ),
            ListTile(
              title: Text('Logout'),
            ),
          ],
        ),
    );
  }
}