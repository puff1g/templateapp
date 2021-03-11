import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:templateapp/Widgets/MyBox.dart';

class Webtestpage extends StatefulWidget {
  @override
  _BoxshowState createState() => _BoxshowState();
}

class _BoxshowState extends State<Webtestpage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double localX = 0;
    double localY = 0;
    bool defaultPosition = true;
    double percentageX = (localX / (size.width - 40)) * 100;
    double percentageY = (localY / 230) * 100;
    return Scaffold(
        key: _scaffoldKey,
        body: GestureDetector(
            onPanCancel: () => setState(() => defaultPosition = true),
            onPanDown: (_) => setState(() => defaultPosition = false),
            onPanEnd: (_) => setState(() {
                  localY = 115;
                  localX = (size.width - 40) / 2;
                  defaultPosition = true;
                }),
            onPanUpdate: (details) {
              if (mounted) setState(() => defaultPosition = false);
              if (details.localPosition.dx > 0 &&
                  details.localPosition.dy < 230) {
                if (details.localPosition.dx < size.width - 40 &&
                    details.localPosition.dy > 0) {
                  localX = details.localPosition.dx;
                  localY = details.localPosition.dy;
                }
              }
              Transform(
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..rotateX(
                      defaultPosition ? 0 : (0.3 * (percentageY / 50) + -0.3))
                  ..rotateY(
                      defaultPosition ? 0 : (-0.3 * (percentageX / 50) + 0.3)),
                alignment: FractionalOffset.center,
                child: Container(), // back layer
              );
            }));
  }
}
