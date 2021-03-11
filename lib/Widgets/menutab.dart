import 'package:flutter/material.dart';
import 'package:templateapp/Style/Variables.dart';

class MenuTab extends StatefulWidget {
  MenuTab({Key key}) : super(key: key);

  @override
  MenuTabState createState() => MenuTabState();
}

class MenuTabState extends State<MenuTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 60.0),
        child: Column(
          children: [
            SizedBox(height: 5),
            Align(
              alignment: FractionalOffset(0.2, 0),
              child: Row(children: [
                Icon(
                  Icons.home,
                  color: someclr,
                  size: 30.0,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ]),
            ),
          ],
        ));
  }
}
