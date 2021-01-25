import 'package:flutter/material.dart';
import 'package:templateapp/Screens/NavigationOpgtions/Drawer.dart';
import 'package:templateapp/Style/Variables.dart';
import 'package:templateapp/Style/config.dart';
import 'package:templateapp/Widgets/CardTab.dart';
import 'package:get/get.dart';

class NavPage extends StatefulWidget {
  NavPage({Key key}) : super(key: key);

  @override
  _NavPageState createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
                  Get.to(DrawerPage());
                },
                child: Text(
                  "Navigation Drawer",
                  style: TextStyle(color: black, fontSize: 25),
                ),
              ),
            ),
            CardTab(
              child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Text(
                  "More comming soon!",
                  style: TextStyle(color: black, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
