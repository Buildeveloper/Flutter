import 'package:flutter/material.dart';
import './../component/FormLogin.dart';
import './../component/HeaderLogo.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
            child: Container(
                padding: EdgeInsets.all(20.0),
                child: Align(
                  alignment: Alignment(0.2, 0.6),
                  child: Column(children: <Widget>[
                    Expanded(child: HeaderLogo()),
                    Expanded(child: LoginForm())
                  ]),
                ))),
      ),
    );
  }
}
