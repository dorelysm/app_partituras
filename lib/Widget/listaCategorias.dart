import 'package:flutter/material.dart';

import 'package:repertorio/Models/model_categorias.dart';

List<Widget> listaCategorias(List<ModelCategorias> data){
  List<Widget> categorias = [];

  for (var categoria in data){
    categorias.add(Card(
      child: Column(
        children: [
          Expanded(child: 
            Image.network(
              categoria.imagen,
              fit: BoxFit.fill,
            )
          ),
          Text(categoria.nombre),
        ],
      ),
    ));
  }
  return categorias;
}