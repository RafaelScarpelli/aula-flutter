import 'package:flutter/material.dart';

class WidgetCidade extends StatelessWidget {
  const WidgetCidade({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de cidade'),
      ),
      body: Form(
          child: Column(
        children: [
          TextFormField(decoration: InputDecoration(labelText: 'Nome:')),
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              labelText: 'Selecione uma opção',
              border: OutlineInputBorder(),
            ),
            value: 'PR',
            onChanged: (String? valor) {
              print('Selecionado: $valor');
            },
            items: ['PR', 'SP', 'BH'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          )
        ],
      )),
    );
  }
}
