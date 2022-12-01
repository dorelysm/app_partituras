import 'package:flutter/material.dart';

import 'package:repertorio/Models/model_canciones.dart';

class ListaCanciones extends StatelessWidget {
  final List<ModelCanciones> canciones;

  const ListaCanciones({Key? key, required this.canciones}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screensize = MediaQuery.of(context).size;

    return ListView.builder(
      itemCount: canciones.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            title: Text(canciones[index].titulo),
            contentPadding: const EdgeInsets.all(20),
            onLongPress: () {},
          ),
        );
      },
    );
  }
}