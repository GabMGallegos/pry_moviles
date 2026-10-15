import 'package:flutter/material.dart';

import '../logic/ejercicio3_logic.dart';

class Ejercicio3Screen extends StatefulWidget {
  Ejercicio3Screen({super.key});

  @override
  State<Ejercicio3Screen> createState() => _Ejercicio3ScreenState();
}

class _Ejercicio3ScreenState extends State<Ejercicio3Screen> {
  final TextEditingController numeroCtrl = TextEditingController();
  String resultado = '';

  void calcular() {
    int? numero = int.tryParse(numeroCtrl.text.trim());
    setState(() {
      if (numero == null) {
        resultado = 'Ingrese un número entero válido';
        return;
      }
      resultado =
          '$numero ${esCapicua(numero) ? 'es capicúa' : 'no es capicúa'}.';
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
      appBar: AppBar(title: Text('Ejercicio 3 - Número capicúa')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            'Ingrese un número entero para comprobarlo.',
          ),
          SizedBox(height: 20),
          TextField(
            controller: numeroCtrl,
            keyboardType: TextInputType.numberWithOptions(signed: true),
            decoration: InputDecoration(labelText: 'Número entero'),
          ),
          ElevatedButton(
            onPressed: calcular,
            child: Text('Verificar capicúa'),
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
