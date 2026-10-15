import 'package:flutter/material.dart';

import '../logic/ejercicio1_logic.dart';

class Ejercicio1Screen extends StatefulWidget {
  Ejercicio1Screen({super.key});

  @override
  State<Ejercicio1Screen> createState() => _Ejercicio1ScreenState();
}

class _Ejercicio1ScreenState extends State<Ejercicio1Screen> {
  final TextEditingController numeroCtrl = TextEditingController();
  String resultado = '';

  void calcular() {
    int? numero = int.tryParse(numeroCtrl.text.trim());
    setState(() {
      if (numero == null) {
        resultado = 'Ingrese un número entero válido';
        return;
      }
      resultado = '$numero ${esPrimo(numero) ? 'es primo' : 'no es primo'}.';
    });
  }

  void limpiar() {
    setState(() {
      numeroCtrl.clear();
      resultado = '';
    });
  }

  @override
  void dispose() {
    numeroCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejercicio 1 - Número primo')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            'Ingrese un número para comprobar si es primo.',
          ),
          SizedBox(height: 20),
          TextField(
            controller: numeroCtrl,
            keyboardType: TextInputType.numberWithOptions(signed: true),
            decoration: InputDecoration(labelText: 'Número entero'),
          ),
          ElevatedButton(
            onPressed: calcular,
            child: Text('Verificar primo'),
          ),
          TextButton(onPressed: limpiar, child: Text('Limpiar')),
          if (resultado.isNotEmpty) ...[
            SizedBox(height: 20),
            Text('Resultado: $resultado'),
          ],
          SizedBox(height: 20),
          OutlinedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Volver al menú'),
          ),
        ],
      ),
    );
  }
}
