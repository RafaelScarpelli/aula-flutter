import 'package:flutter/material.dart';
import 'package:flutter_application_1/configuracao/rotas.dart';

class WidgetPessoa extends StatelessWidget {
  const WidgetPessoa({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return Text('Tela de pessoas');
    return Scaffold(
      body: Text('detalhes da Cidade...'),
      bottomSheet: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Rotas.home);
          },
          child: Text('Home')),
    );
  }
}
