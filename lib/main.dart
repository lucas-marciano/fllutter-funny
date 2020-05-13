import 'package:flutter/material.dart';
import 'package:startup_namer/list_page.dart';
import 'package:startup_namer/side_menu_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Funny',
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
      ),
      home: MainApp(),
    );
  }
}

class MainApp extends StatefulWidget {
  @override
  MainAppState createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Funny'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: new Column(
            children: <Widget>[
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (BuildContext context) => RandomWords(),
                      ),
                    );
                  },
                  child: Text('Abrir lista'),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (BuildContext context) => SideMenuPage(),
                      ),
                    );
                  },
                  child: Text('Menu lateral'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
