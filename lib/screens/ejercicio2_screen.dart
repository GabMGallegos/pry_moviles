import 'package:flutter/material.dart';

import '../logic/ejercicio2_logic.dart';

class Ejercicio2Screen extends StatefulWidget {
  Ejercicio2Screen({super.key});

  @override
  State<Ejercicio2Screen> createState() => _Ejercicio2ScreenState();
}

class _Ejercicio2ScreenState extends State<Ejercicio2Screen> {
  final TextEditingController numeroCtrl = TextEditingController();
  String resultado = '';

  void calcular() {
    int? numero = int.tryParse(numeroCtrl.text.trim());
    setState(() {
      if (numero == null) {
        resultado = 'Ingrese un número entero válido';
        return;
      }
      resultado = calcularFactorial(numero);
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
      appBar: AppBar(title: Text('Ejercicio 2 - Factorial')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            'Ingrese un número para ver el procedimiento y el resultado.',
          ),
          SizedBox(height: 20),
          Text(
            'Ejemplo: 5! = 5 × 4 × 3 × 2 × 1 = 120. El factorial de 0 es 1.',
          ),
          SizedBox(height: 20),
          TextField(
            controller: numeroCtrl,
            keyboardType: TextInputType.numberWithOptions(signed: true),
            decoration: InputDecoration(labelText: 'Número entero'),
          ),
          ElevatedButton(
            onPressed: calcular,
            child: Text('Calcular factorial'),
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
