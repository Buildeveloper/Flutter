import 'package:flutter/material.dart';

class HeaderLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
              child: Image.asset('logoForma.png', width: 100.0, height: 100.0)
          ),
        ],
      ),
    );
  }
}
