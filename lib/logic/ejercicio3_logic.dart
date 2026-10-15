bool esCapicua(int numero) {
  String texto = numero.toString();
  return texto == texto.split('').reversed.join();
}
