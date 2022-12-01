import 'package:flutter/material.dart';

import 'package:repertorio/Models/model_categorias.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late Future<List<ModelCategorias>> _listaCategorias;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Repertorio del coro Alberto Carbonell'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Image.asset('logo.png'),
          ElevatedButton(
            onPressed: () {
              _verRepertorio(context);
            },
            child: const Text('Repertorio')),
          ElevatedButton(
            onPressed: () {
              _verSobreNosotros(context);
            },
            child: const Text('Sobre nosotros')),
          ElevatedButton(
            onPressed: () {
              _verRedes(context);
            },
            child: const Text('Redes sociales')),
        ],
      ),
    );
  }

  void _verSobreNosotros(BuildContext context){
    Navigator.of(context).pushNamed('/sobrenosotros');
  }
  void _verRedes(BuildContext context){
    Navigator.of(context).pushNamed('/redes');
  }
  void _verRepertorio(BuildContext context){
    Navigator.of(context).pushNamed('/repertorio');
  }
}