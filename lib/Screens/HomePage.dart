import 'package:flutter/material.dart';
import 'package:templateapp/Screens/NavPage.dart';
import 'package:templateapp/Screens/Webtestpage.dart';
import 'package:templateapp/Style/Variables.dart';
import 'package:templateapp/Style/config.dart';
import 'package:templateapp/Webitems/sidebar.dart';
import 'package:templateapp/Widgets/Button.dart';
import 'package:templateapp/Widgets/CardTab.dart';
import 'package:get/get.dart';
import 'package:templateapp/Widgets/menutab.dart';
import 'package:templateapp/sizehelper.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return new Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          actions: [
            TextButton(
              child: Text("Press"),
              onPressed: () {
                currentTheme.switchTheme();
              },
            ),
          ],
        ),
        body: new DefaultTextStyle(
          style: new TextStyle(
              inherit: true,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: txtclr),
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                right: BorderSide(
                                  color: Colors.grey,
                                  width: 1.0,
                                ),
                              )),
                              width: size.width,
                              height: displayHeight(context) * 0.94,
                              child: Container(
                                color: primaryColor,
                                child: Column(
                                  children: [
                                    Image.asset('lib/Images/logo.png'),
                                    Align(
                                      alignment: FractionalOffset(0.2, 0),
                                      child: Text(
                                        "Menu",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    MenuTab(),
                                    MenuTab(),
                                    MenuTab(),
                                    MenuTab(),
                                  ],
                                ),
                              ))),
                      Expanded(
                        flex: 4,
                        child: Container(
                          color: primaryColor,
                          width: size.width,
                          height: displayHeight(context) * 0.94,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("Movie"),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("TV Show", style: TextStyle(fontWeight: FontWeight.bold),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("Series"),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: displayWidth(context) * 0.5,
                                height: displayHeight(context) * 0.5,
                                child: Image.asset("lib/Images/ferrari.jpg"))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
