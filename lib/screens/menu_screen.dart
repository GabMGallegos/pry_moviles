import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicios de Algoritmos'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          opcion(context, 'Ejercicio 1', 'Identificar Números Primos',
              Icons.point_of_sale, '/ejercicio1'),
          opcion(context, 'Ejercicio 2', 'Calcular el procedimiento de Factorización',
              Icons.calendar_month, '/ejercicio2'),
          opcion(context, 'Ejercicio 3', 'Número Capicua',
              Icons.store, '/ejercicio3'),
        ],
      ),
    );
  }

  /// Construye una tarjeta del menú que lleva a la ruta indicada.
  Widget opcion(BuildContext context, String titulo, String subtitulo,
      IconData icono, String ruta) {
    return Card(
      child: ListTile(
        leading: Icon(icono),
        title: Text(titulo),
        subtitle: Text(subtitulo),
        trailing: Icon(Icons.chevron_right),
        onTap: () {
          Navigator.pushNamed(context, ruta);
        },
      ),
    );
  }
}
