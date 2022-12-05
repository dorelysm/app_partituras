import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
//import 'package:pdf_viewer_flutter/pdf_viewer_flutter.dart';
import 'dart:async';
import 'dart:io';
import 'package:pdf_flutter/pdf_flutter.dart';
//import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';

class Cancion extends StatefulWidget {
  const Cancion({super.key});

  @override
  State<Cancion> createState() => _CancionState();
}

class _CancionState extends State<Cancion> {
  bool _isLoading = true;
  //late PDFDocument _pdf;
  /*
  void _loadFile() async {
    _pdf = await PDFDocument.fromAsset('assets/Diraiton.pdf');

    setState((){
      _isLoading = false;
    });
  }
  */
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