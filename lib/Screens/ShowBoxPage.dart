import 'package:flutter/material.dart';
import 'package:templateapp/Widgets/MyBox.dart';

class Boxshow extends StatefulWidget {
  @override
  _BoxshowState createState() => _BoxshowState();
}

class _BoxshowState extends State<Boxshow> {
  bool _shouldShow;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    _shouldShow = true;
    _scaffoldKey = GlobalKey<ScaffoldState>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Column(
        children: [
          CheckboxListTile(
            value: _shouldShow,
            title: Text("Show Box"),
            onChanged: (bool value) => setState(() {
              _shouldShow = value;
            }),
          ),
          if (_shouldShow)
            MyBox(
              onTap: () => _scaffoldKey.currentState.showSnackBar(
                SnackBar(
                  content: Text("Hello, SnackBar!"),
                ),
              ),
              title: "I'm visible!",
            )
          else
            Text("Not showing!")
        ],
      ),
    );
  }
}
