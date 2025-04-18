import 'package:flutter/material.dart';
import 'package:flutter_application_1/configuracao/rotas.dart';
import 'package:flutter_application_1/configuracao/widget/widget_botao.dart';

class WidgetMenu extends StatelessWidget {
  const WidgetMenu({key}) : super(key: key);

  //método - define, tudo que repete, parâmetro(não tem, diferentes)
  Widget criarBotao(BuildContext context, String rotulo, String rota) {
    return ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed(rota);
        },
        child: Text(rotulo));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //jeito de fazer com classe
        WidgetBotao(rota: Rotas.estado, rotulo: 'Cadastro de Estado'),
        //jeito de fazer com método
        criarBotao(context, 'Lista de cidade', Rotas.listaCidade),
        criarBotao(context, 'Cadastro de Pessoa', Rotas.pessoa),
        //criarBotao(context, 'Cadastro de cidade', Rotas.cidade),
      ],
    );
  }
}
