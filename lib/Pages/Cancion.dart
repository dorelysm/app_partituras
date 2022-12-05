import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf_viewer_flutter/pdf_viewer_flutter.dart';


class Cancion extends StatefulWidget {
  const Cancion({super.key});

  @override
  State<Cancion> createState() => _CancionState();
}

class _CancionState extends State<Cancion> {
  @override
  void initState() {
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Nombre de la cancion')),
        centerTitle: true,
      ),
      body: Text('hola')
    );
  }
}