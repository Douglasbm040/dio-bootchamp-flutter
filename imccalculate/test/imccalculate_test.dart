import 'package:imccalculate/modules/math/icmmath.dart';
import 'package:imccalculate/modules/models/pessoa.dart';
import 'package:test/test.dart';

void main() {
  group('IcmMath', () {
    test('Calcula IMC corretamente', () {
      double peso = 70;
      double altura = 170;

      double resultado = IcmMath.calcularIMC(peso, altura);

      expect(resultado, closeTo(24.22, 0.01));
    });
  });
}
