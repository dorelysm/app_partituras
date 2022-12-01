import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'package:repertorio/Models/model_canciones.dart';

class CancionesProviders {
  final url = Uri.parse('http://localhost:4000/canciones');

  Future<List<ModelCanciones>> getCanciones() async {
    final resp = await http.get(url);

    if (resp.statusCode == 200){

      String body = utf8.decode(resp.bodyBytes);

      final jsonData = jsonDecode(body);

      final canciones = Canciones.fromJsonList(jsonData);
      
      return canciones.items;
    }else{
      throw Exception("Ocurrio Algo ${resp.statusCode}");
    }

  }
}