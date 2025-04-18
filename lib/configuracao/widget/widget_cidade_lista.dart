import 'package:flutter/material.dart';
import 'package:flutter_application_1/configuracao/rotas.dart';

class WidgetCidadeLista extends StatelessWidget {
  var cidades = [
    {
      'nome': 'Paranavaí',
      'estado': 'PARANÁ',
      'url':
          'https://static.wikia.nocookie.net/brainrotnew/images/e/e3/Bombini_Gusini.jpg/revision/latest?cb=20250416185048'
    },
    {
      'nome': 'Pindamoiangaba',
      'estado': 'SÃO PAULO',
      'url':
          'https://static.wikia.nocookie.net/brainrotnew/images/f/f7/Brr_Brr_Patapim.png/revision/latest?cb=20250326180223'
    },
    {
      'nome': 'Floripa',
      'estado': 'SANTA CATARINA',
      'url':
          'https://img.freepik.com/vetores-gratis/peixe-robalo_43623-931.jpg?semt=ais_hybrid&w=740'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lista Pessoas'),
        ),
        body: ListView.builder(
          itemCount: cidades.length,
          itemBuilder: (context, contador) => ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('${cidades[contador]['url']}'),
              ),
              title: Text('${cidades[contador]['nome']}'),
              subtitle: Text('${cidades[contador]['estado']}'),
              trailing: SizedBox(
                width: 80,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(Rotas.cidade);
                      },
                      icon: const Icon(Icons.edit),
                      color: Colors.green,
                    ),
                    IconButton(
                      onPressed: () {
                        print('excluiu');
                      },
                      icon: const Icon(Icons.delete),
                      color: Colors.red,
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(Rotas.pessoa);
              }),
        ));
  }
}
