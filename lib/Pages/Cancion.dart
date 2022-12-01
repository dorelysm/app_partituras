import 'package:flutter/material.dart';
import 'package:pdf_flutter/pdf_flutter.dart';


class Cancion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Nombre de la cancion')),
        centerTitle: true,
      ),
      body: PDF.asset(
        "assets/Diraiton.pdf"
      ),
    );
  }
}