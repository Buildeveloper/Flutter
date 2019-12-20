import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final VoidCallback callback;
  final String params;

  Button(this.callback, String this.params);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          new Expanded(
            child: RaisedButton(
                onPressed: callback,
                child: Text(this.params),
                color: Colors.yellow,
                textColor: Colors.black,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                splashColor: Colors.grey),
          ),
        ],
      ),
    );
  }
}
