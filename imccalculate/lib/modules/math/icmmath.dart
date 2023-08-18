class IcmMath {
  static double calcularIMC(double peso, double altura) {
  double alturaEmMetros = altura / 100; 
  double imc = peso / (alturaEmMetros * alturaEmMetros);
  return imc;
}
}