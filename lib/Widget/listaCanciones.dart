import 'package:flutter/material.dart';

import 'package:repertorio/Models/model_canciones.dart';

List<Widget> listaCanciones(List<ModelCanciones> data){
  List<Widget> canciones = [];

  for (var canciones in data){
    canciones.add(Card(
      child: Column(
        children: [
          Text(canciones.titulo),
          Text(canciones.descripcion),
        ],
      ),
    ));
  }
  return canciones;
}