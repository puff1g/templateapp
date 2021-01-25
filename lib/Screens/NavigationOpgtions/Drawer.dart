import 'package:flutter/material.dart';
import 'package:templateapp/Screens/HomePage.dart';
import 'package:templateapp/Screens/NavPage.dart';
import 'package:templateapp/Style/Variables.dart';
import 'package:templateapp/Style/config.dart';
import 'package:templateapp/Widgets/CardTab.dart';
import 'package:get/get.dart';

class DrawerPage extends StatefulWidget {
  DrawerPage({Key key}) : super(key: key);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Navigations Options'),
        actions: [
          FlatButton(
            child: Text("Press"),
            onPressed: () {
              currentTheme.switchTheme();
            },
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            CardTab(
              child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Center(
                  child: Text(
                    "Back",
                    style: TextStyle(color: black, fontSize: 25),
                  ),
                ),
              ),
            ),
            CardTab(
              child: InkWell(
                onTap: () {
                  Get.to(HomePage());
                },
                child: Center(
                  child: Text(
                    "HomePage",
                    style: TextStyle(color: black, fontSize: 25),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
