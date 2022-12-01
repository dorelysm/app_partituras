import 'package:flutter/material.dart';

import 'package:repertorio/Models/model_categorias.dart';
import 'package:repertorio/Provider/categorias_provider.dart';
import 'package:repertorio/Widget/listaCategorias.dart';

class Repertorio extends StatefulWidget {
  const Repertorio({Key? key}) : super(key: key);

  @override
  State<Repertorio> createState() => _RepertorioState();
}

class _RepertorioState extends State<Repertorio> {
  late Future<List<ModelCategorias>> _listaCategorias;

  @override
  void initState() {
    super.initState();
    final getprovider = CategoriasProviders();
    _listaCategorias = getprovider.getCategorias();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Repertorio')),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: _listaCategorias,
        builder: (context, snapshot){
          if (snapshot.hasData){
            return GridView.count(
              crossAxisCount: 2,
              children: listaCategorias(snapshot.data as List<ModelCategorias>),
            );
          } else {
            print(snapshot.error);
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      )

    );
  }
}