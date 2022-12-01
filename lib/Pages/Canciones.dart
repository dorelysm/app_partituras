import 'package:flutter/material.dart';

import 'package:repertorio/Models/model_canciones.dart';
import 'package:repertorio/Provider/canciones_provider.dart';
import 'package:repertorio/Widget/listaCanciones.dart';

class Canciones extends StatefulWidget {
  const Canciones({Key? key}) : super(key: key);

  @override
  State<Canciones> createState() => _CancionesState();
}

class _CancionesState extends State<Canciones> {
  late Future<List<ModelCanciones>> _listaCanciones;

  @override
  void initState() {
    super.initState();
    final getprovider = CancionesProviders();
    _listaCanciones = getprovider.getCanciones();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Canciones')),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: _listaCanciones,
        builder: (context, snapshot){
          if (snapshot.hasData){
            return ListaCanciones(canciones: snapshot.data as List<ModelCanciones>);
          } else {
            print(snapshot.error);
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}