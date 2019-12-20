import 'package:flutter/material.dart';
import 'Button.dart';
import './../ui/Home.dart';

class Data {
  String code;
}

class FormaAutenticacao extends StatelessWidget {
  Data _data = new Data();
  BuildContext contextView;

  @override
  Widget build(BuildContext context) {
    this.contextView = context;

    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextFormField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                hintText: "Digite o código",
              ),
              onChanged: (String value) {
                this._data.code = value;
              }),
          Expanded(child: Button(this.submit, "Autenticar")),
        ],
      ),
    );
  }

  submit() {
    print('ok');
    print('Code: ${this._data.code}');
    Navigator.push(this.contextView, MaterialPageRoute(builder: (context) => Menu()));
  }
}
