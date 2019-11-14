import 'package:flutter/material.dart';

class Listing extends StatelessWidget {
  static String tag = 'listings'; // tag for navigation
  @override
  Widget build(BuildContext context) {

  // Return listing screen
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text('Listing'),
    ),
    body: ListView.builder(
          // Use builder and make list with ListItems
          itemBuilder: (BuildContext context, int index) => ListItem(data[index]),
          itemCount: data.length,
    ),
    // Drawer navigation for screen
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
          // Navigation options
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

// One Item in list
class Item {
  Item(this.title, [this.children = const <Item>[]]);
  final String title;
  final List<Item> children;
}

// List of all persons
final List<Item> data = <Item>[
  // Parent Item
  Item('Person 01',
  // Child Item
    <Item>[
      Item('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc luctus in dui sed pharetra.',
      ),
    ],
  ),
  Item('Person 02',
    <Item>[
      Item('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc luctus in dui sed pharetra.',
      ),
    ],
  ),
  Item('Person 03',
    <Item>[
      Item('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc luctus in dui sed pharetra.',
      ),
    ],
  ),
  Item('Person 04',
    <Item>[
      Item('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc luctus in dui sed pharetra.',
      ),
    ],
  ),
  Item('Person 05',
    <Item>[
      Item('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc luctus in dui sed pharetra.',
      ),
    ],
  ),
];

// Display only one Item if Item doesn't have childen dont display it
class ListItem extends StatelessWidget {
  const ListItem (this.item);

  final Item item;

  Widget buildTiles (Item root) {
    if (root.children.isEmpty)
      return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Item>(root),
      title: Text(root.title),
      children: root.children.map<Widget>(buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildTiles(item);
  }
}