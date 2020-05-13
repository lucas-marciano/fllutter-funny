import 'package:flutter/material.dart';
import './menu/about_page.dart';

class SideMenuPage extends StatefulWidget {
  @override
  _SideMenuPageState createState() => _SideMenuPageState();
}

class _SideMenuPageState extends State<SideMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SideMenu'),
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Lucas Marciano'),
              accountEmail: new Text('lucas@email.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage(
                    'https://api.adorable.io/avatars/285/abott@adorable'),
              ),
            ),
            new ListTile(
              title: new Text("Home"),
              leading: Icon(Icons.home, color: Colors.deepPurple),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            new ListTile(
              title: new Text("Lives"),
              leading: Icon(Icons.audiotrack, color: Colors.deepPurple),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            new ListTile(
              title: new Text("Favorites"),
              leading: Icon(Icons.favorite, color: Colors.deepPurple),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            new ListTile(
              title: new Text("Contact"),
              leading: Icon(Icons.mail, color: Colors.deepPurple),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            new ListTile(
              title: new Text("About"),
              leading: Icon(Icons.info, color: Colors.deepPurple),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (BuildContext context) => AboutPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
