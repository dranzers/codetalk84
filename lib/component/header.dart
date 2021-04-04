import 'package:flutter/material.dart';

class HeaderComponent extends StatefulWidget {
  @override
  _HeaderComponentState createState() => _HeaderComponentState();
}

class _HeaderComponentState extends State<HeaderComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('CodeTalk 84',
            style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w400)),
        Text('Login your account',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300))
      ]),
    );
  }
}
