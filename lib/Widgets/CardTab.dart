import 'package:flutter/material.dart';
import 'package:templateapp/Style/Variables.dart';

class CardTab extends StatefulWidget {
  final Widget child;
  final Color borderColor;
  final Color boxShadow;

  CardTab({Key key, @required this.child, this.borderColor, this.boxShadow})
      : super(key: key);

  @override
  _CardTabState createState() => _CardTabState();
}

class _CardTabState extends State<CardTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Card(
          margin: EdgeInsets.all(20.0),
          color: Colors.white,
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: widget.child,
            decoration: BoxDecoration(
                color: white,
                border:
                    widget.borderColor ?? Border.all(color: black, width: 2),
                boxShadow: [
                  BoxShadow(
                      color: widget.boxShadow ?? black,
                      offset: Offset(10.0, 10.0))
                ]),
          ),
        ),
      ],
    );
  }
}
