import 'package:flutter/material.dart';
import './../component/HeaderHome.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Menu',
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            child: Column(
              children: <Widget>[HeaderHome()],
            ),
          ),
        ));
  }
}
