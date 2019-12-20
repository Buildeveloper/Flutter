import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './../component/HeaderLogo.dart';
import './../component/FormAutenticacao.dart';

class Autenticacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Autenticacao',
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
            child: Container(
                padding: EdgeInsets.all(20.0),
                child: Align(
                  alignment: Alignment(0.2, 0.6),
                  child: Column(children: <Widget>[
                    Expanded(child: HeaderLogo()),
                    Column(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text('Autenticação dois fatores',
                                style: TextStyle(fontWeight: FontWeight.bold))),
                        Padding(
                            padding: EdgeInsets.only(bottom: 20.0, top: 10.0),
                            child: Text(
                                'O código foi enviado para o número (xx) x xxxx-xxxx',
                                textAlign: TextAlign.center))
                      ],
                    ),
                    Expanded(child: FormaAutenticacao())
                  ]),
                ))),
      ),
    );
  }
}
