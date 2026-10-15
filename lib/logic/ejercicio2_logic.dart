String calcularFactorial(int numero) {
  if (numero < 0) return 'El factorial no está definido para negativos';
  if (numero == 0) return '0! = 1';

  BigInt factorial = BigInt.one;
  List<int> factores = [];
  for (int i = numero; i >= 1; i--) {
    factorial = factorial * BigInt.from(i);
    factores.add(i);
  }
  return '$numero! = ${factores.join(' × ')} = $factorial';
}
