import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  static String tag = 'login'; 
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  // Screen title as widget because it will be hidden when doing search
  Widget appBarTitle = Text('Search');
  // Define search icon. Icon will be changed after state change
  Icon openSearch = Icon(Icons.search, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        title: appBarTitle,
        actions: <Widget>[
          IconButton(
            icon: openSearch,
            // When user clicks on search icon -> 
            // change appbar title to textform widget and change icon to close icon  
            // After user clicks on close icon remove textform widget and display screen title
            onPressed: () {
              setState(() {
                if (this.openSearch.icon == Icons.search) {
                  this.openSearch = Icon(Icons.close);
                  this.appBarTitle = TextFormField(
                    decoration: InputDecoration(
                    hintText: 'Search for something',
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)
                    )
                    )
                  );
                } else {
                  this.openSearch = Icon(Icons.search);
                  this.appBarTitle = Text('Search');
                }
              });
            },
          )
        ],
      ),
      // Add drawer navigation to screen with listiles and navigation
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