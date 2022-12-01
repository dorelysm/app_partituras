import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'package:repertorio/Models/model_categorias.dart';

class CategoriasProviders {
  final url = Uri.parse('http://localhost:4000/categorias');

  Future<List<ModelCategorias>> getCategorias() async {
    final resp = await http.get(url);

    if (resp.statusCode == 200){

      String body = utf8.decode(resp.bodyBytes);

      final jsonData = jsonDecode(body);

      final categorias = Categorias.fromJsonList(jsonData);
      
      return categorias.items;
    }else{
      throw Exception("Ocurrio Algo ${resp.statusCode}");
    }

  }
}