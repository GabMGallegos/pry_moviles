import 'package:flutter/material.dart';

import 'menu_screen.dart';

class BienvenidaScreen extends StatelessWidget {
  BienvenidaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejercicios de Algoritmos')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bienvenido a Algoritmos'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuScreen()),
                );
              },
              child: Text('Ir al menú'),
            ),
          ],
        ),
      ),
    );
  }
}
