import 'package:flutter/material.dart';
import 'Button.dart';
import './../ui/Autenticacao.dart';

class _LoginData {
  String usuario = '';
  String password = '';
}

class LoginForm extends StatelessWidget {
  _LoginData _data = new _LoginData();
  BuildContext contextView;

  @override
  Widget build(BuildContext context) {
    this.contextView = context;

    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextFormField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                hintText: 'Digite seu nome de usuario',
                labelText: "Usuario",
              ),
              onChanged: (String value) {
                this._data.usuario = value;
              }),
          TextFormField(
              keyboardType: TextInputType.visiblePassword,
              decoration: const InputDecoration(
                hintText: 'Digite sua senha',
                labelText: "Senha",
              ),
              onChanged: (String value) {
                this._data.password = value;
              }),
          Expanded(child: Button(this.submit, "Entrar")),
        ],
      ),
    );
  }

  submit() {
    print('ok');
    print('Email: ${this._data.usuario}');
    print('Password: ${this._data.password}');
    Navigator.push(this.contextView,
        MaterialPageRoute(builder: (context) => Autenticacao()));
  }
}
