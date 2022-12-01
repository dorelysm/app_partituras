import 'dart:html';

import 'package:flutter/material.dart';
import 'package:repertorio/Pages/Homepage.dart';
import 'package:repertorio/Pages/Redes.dart';
import 'package:repertorio/Pages/Repertorio.dart';
import 'package:repertorio/Pages/SobreNosotros.dart';
import 'package:repertorio/Pages/Canciones.dart';
import 'package:repertorio/Pages/Cancion.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Partituras del coro',
      initialRoute: '/',
      routes: {
        '/': (context) => const Homepage(),
        '/redes': (context) => Redes(),
        '/sobrenosotros': (context) => SobreNosotros(),
        '/repertorio': (context) => Repertorio(),
        '/canciones': (context) => Canciones(),
        '/cancion': (context) => Cancion(),
      },
      theme: ThemeData(
        //brightness: Brightness.dark,
        //primaryColor: Colors.red,
      ),
    );
  }
}