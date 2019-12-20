import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconHeaderHome extends StatelessWidget {
  final double sizeIcon;
  final VoidCallback callback;
  final IconData iconParams;

  IconHeaderHome(this.sizeIcon, this.iconParams, {this.callback = null});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.amber,
      child: Center(
        child: Ink(
          decoration:
              const ShapeDecoration(color: Colors.white, shape: CircleBorder()),
          child: IconButton(
              padding: new EdgeInsets.all(0.0),
              icon: Icon(iconParams),
              color: Colors.white,
              onPressed: callback,
              iconSize: sizeIcon),
        ),
      ),
    );
  }
}
