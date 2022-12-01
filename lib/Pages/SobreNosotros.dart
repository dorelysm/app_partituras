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
          const Center(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text('Coro Alberto Carbonell',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Somos un coro polifónico a cuatro voces'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
                'El coro Alberto Carbonell es un proceso artístico de gran impacto social con 17 años de trayectoria nacional e internacional, representando al departamento del Atlántico y a Colombia en certámenes corales en países como Venezuela, Argentina, Brasil, México y Ecuador.'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text('Director del coro: Rosemberg Cueto'),
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: Center(child: Image.asset('foto1.jpg')),
          )
        ],
      ),
    );
  }
}
