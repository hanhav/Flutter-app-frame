import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  static String tag = 'settings'; 
  @override
  Widget build(BuildContext context) {

    final List<String> listItems = <String> [
      'ListItem 1', 'ListItem 2', 'ListItem 3',
      'ListItem 4', 'ListItem 5', 'ListItem 6',
      'ListItem 7', 'ListItem 8', 'ListItem 9',
      'ListItem 10', 'ListItem 11', 'ListItem 12',
    ];

    final listingView = ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: listItems.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
        height: 60,
        color: Colors.white,
          child: ListTile(
            title: Text('Entry ${listItems[index]}'),
            onTap: () {
              Navigator.push(context,
                new MaterialPageRoute(builder: (context) => DetailScreen())
              );
            },
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Settings'),
      ),
      body: listingView,
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

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subsetting'),
      ),
    );
  }
}