import 'package:flutter/material.dart';

class SobreNosotros extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Sobre nosotros')),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Text('Coro Alberto Carbonell'),
          ),
          Text('Somos un coro polifónico a cuatro voces'),
          Text(
              'El coro Alberto Carbonell es un proceso artístico de gran impacto social con 17 años de trayectoria nacional e internacional, representando al departamento del Atlántico y a Colombia en certámenes corales en países como Venezuela, Argentina, Brasil, México y Ecuador.'),
          Text('Director del coro: Rosemberg Cueto'),
          Image.asset('foto1.jpg')
        ],
      ),
    );
  }
}
