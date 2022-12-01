import 'package:flutter/src/material/card.dart';

class Canciones {
  List<ModelCanciones> items = [];

  Canciones();

  Canciones.fromJsonList(List<dynamic> jsonList){
    if(jsonList == null) return;
    for (var item in jsonList){
      final cancion = new ModelCanciones.fromJsonMap(item);
      items.add(cancion);
    }
  }
}

class ModelCanciones {
  late String id;
  late String titulo;
  late String descripcion;
  late String pdf;

  ModelCanciones(
    this.id,
    this.titulo,
    this.descripcion,
    this.pdf,
  );

  ModelCanciones.fromJsonMap(Map<String, dynamic> json){
    id = json['id'];
    titulo = json['titulo'];
    descripcion = json['descripcion'];
    pdf = json['pdf'];
  }

  void add(Card card) {}
}