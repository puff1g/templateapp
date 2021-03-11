import 'package:flutter/material.dart';

class SideLayout extends StatelessWidget {
  const SideLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: Color(0xff404040),
          child: Column(
            children: <Widget>[
              SizedBox(height: 70),
              // Image.asset('lib/Images/E60-m5.jpg'),
              Text(
                'Build beautiful Apps',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
