import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Redes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Redes sociales')),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(20),
            child: Center(child: Text('Síguenos en redes sociales', 
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton.icon(
              onPressed: (){}, 
              icon: const Icon(
                Icons.facebook
              ), 
              label: const Text('Facebook')),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton.icon(
              onPressed: (){}, 
              icon: const FaIcon(
                FontAwesomeIcons.instagram
              ),
              label: const Text('Instagram')),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton.icon(
              onPressed: (){}, 
              icon: const FaIcon(
                FontAwesomeIcons.youtube
              ),
              label: const Text('Youtube')),
          ),
        ],
      ),
    );
  }
}