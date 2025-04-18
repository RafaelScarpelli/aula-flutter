import 'package:flutter/material.dart';
import 'package:flutter_application_1/configuracao/rotas.dart';
import 'package:flutter_application_1/configuracao/widget/widget_cidade.dart';
import 'package:flutter_application_1/configuracao/widget/widget_cidade_lista.dart';
import 'package:flutter_application_1/configuracao/widget/widget_estado.dart';
import 'package:flutter_application_1/configuracao/widget/widget_menu.dart';
import 'package:flutter_application_1/configuracao/widget/widget_pessoa.dart';
import 'package:flutter_application_1/configuracao/widget/widget_pessoa_lista.dart';

class App extends StatelessWidget {
  const App({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Aula Widget',
        theme: ThemeData(primarySwatch: Colors.blue),
        debugShowCheckedModeBanner: false,
        initialRoute: Rotas.home,
        routes: {
          Rotas.home: (context) => WidgetMenu(),
          Rotas.estado: (context) => const WidgetEstado(),
          Rotas.listaCidade: (context) => WidgetCidadeLista(),
          Rotas.pessoa: (context) => const WidgetPessoa(),
          Rotas.cidade: (context) => WidgetCidade()
        });
  }
}
