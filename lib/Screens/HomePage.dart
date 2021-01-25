import 'package:flutter/material.dart';
import 'package:templateapp/Screens/NavPage.dart';
import 'package:templateapp/Style/Variables.dart';
import 'package:templateapp/Style/config.dart';
import 'package:templateapp/Widgets/Button.dart';
import 'package:templateapp/Widgets/CardTab.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Home'),
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
                  Get.to(NavPage());
                },
                child: Text(
                  "Navigation Options",
                  style: TextStyle(color: black, fontSize: 25),
                ),
              ),
            ),
            CardTab(
              child: InkWell(
                onTap: () {
                  Get.to(NavPage());
                },
                child: Text(
                  "Buttons",
                  style: TextStyle(color: black, fontSize: 25),
                ),
              ),
            ),
            CustomButton(
              onPressed: () {
                Get.to(NavPage());
              },
            )
          ],
        ),
      ),
    );
  }
}
