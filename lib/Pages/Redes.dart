import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Redes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Redes sociales')),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Center(child: Text('Síguenos en redes sociales')),
          ElevatedButton.icon(
            onPressed: (){}, 
            icon: const Icon(
              Icons.facebook
            ), 
            label: const Text('Facebook')),
          ElevatedButton.icon(
            onPressed: (){}, 
            icon: const FaIcon(
              FontAwesomeIcons.instagram
            ),
            label: const Text('Instagram')),
          ElevatedButton.icon(
            onPressed: (){}, 
            icon: const FaIcon(
              FontAwesomeIcons.youtube
            ),
            label: const Text('Youtube')),
        ],
      ),
    );
  }
}