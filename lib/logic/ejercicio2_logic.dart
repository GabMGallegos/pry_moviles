String calcularFactorial(int numero) {
  if (numero < 0) return 'El factorial no está definido para negativos';
  if (numero == 0) return '0! = 1';

  int factorial = 1;

  for (int i = numero; i >= 1; i--) {
    factorial = factorial * i;
  }

  return '$numero! = $factorial';
}
