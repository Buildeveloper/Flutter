import 'package:flutter/material.dart';
import './../component/IconHeaderHome.dart';

class HeaderHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 4,
        color: Colors.amber,
        child: Row(children: <Widget>[
          Expanded(child: Container(child: IconHeaderHome(30, Icons.replay))),
          Expanded(
              child:
                  Container(child: IconHeaderHome(120, Icons.account_circle))),
          Expanded(
              child: Container(child: IconHeaderHome(30, Icons.play_for_work))),
        ]));
  }
}
