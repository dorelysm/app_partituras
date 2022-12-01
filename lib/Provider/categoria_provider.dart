import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'package:repertorio/Models/model_categorias.dart';

class CategoriaProviders {
  final url = Uri.parse('http://localhost:4000/categoria/1');

  Future<List<ModelCategorias>> getCategorias() async {
    final resp = await http.get(url);

    if (resp.statusCode == 200){

      String body = utf8.decode(resp.bodyBytes);

      final jsonData = jsonDecode(body);

      final categoria = Categorias.fromJsonList(jsonData);
      
      return categoria.items;
    }else{
      throw Exception("Ocurrio Algo ${resp.statusCode}");
    }

  }
}