import 'package:flutter/material.dart';

class WidgetPessoaLista extends StatelessWidget {
  var pessoas = [
    {
      'nome': 'Rafael',
      'telefone': '(44) 99988-7766',
      'url':
          'https://i.pinimg.com/474x/33/db/10/33db10fcf54da5074f3ed5a6dd63e0be.jpg'
    },
    {
      'nome': 'Ariel',
      'telefone': '(44) 99999-9999',
      'url': 'https://cdn-icons-png.flaticon.com/512/1241/1241954.png'
    },
    {
      'nome': 'Rômilu',
      'telefone': '(44) 98888-8888',
      'url':
          'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/476.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lista Pessoas'),
        ),
        body: ListView.builder(
          itemCount: pessoas.length,
          itemBuilder: (context, contador) => ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('${pessoas[contador]['url']}'),
            ),
            title: Text('${pessoas[contador]['nome']}'),
            subtitle: Text('${pessoas[contador]['telefone']}'),
            trailing: SizedBox(
              width: 80,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                    color: Colors.green,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.delete),
                    color: Colors.red,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
