import 'package:flutter/material.dart';

import 'screens/bienvenida_screen.dart';
import 'screens/ejercicio1_screen.dart';
import 'screens/ejercicio2_screen.dart';
import 'screens/ejercicio3_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejercicios de Algoritmos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      ),
      // Pantalla con la que arranca la app
      initialRoute: '/',
      // Mapa de rutas: nombre de la ruta -> pantalla
      routes: {
        '/': (context) => BienvenidaScreen(),
        '/ejercicio1': (context) => Ejercicio1Screen(),
        '/ejercicio2': (context) => Ejercicio2Screen(),
        '/ejercicio3': (context) => Ejercicio3Screen(),
      },
    );
  }
}
