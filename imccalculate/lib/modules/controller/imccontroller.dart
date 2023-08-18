import 'package:imccalculate/modules/math/icmmath.dart';
import 'package:imccalculate/modules/models/pessoa.dart';
import 'package:imccalculate/modules/view/inputview.dart';
import 'package:imccalculate/modules/view/outputview.dart';


class IcmController {

  final Pessoa usuario;

  IcmController(this.usuario);

  void controllerImc() {
    double imc = IcmMath.calcularIMC(usuario.peso, usuario.altura);
    if (imc < 18.5) {
      OutputView.feadback("${usuario.nome}, o seu imc é $imc, está  com abaixo do peso");
    } else if (imc < 24.9) {
      OutputView.feadback("${usuario.nome}, o seu imc é $imc, está com peso normal");
    } else if (imc < 29.9) {
      OutputView.feadback("${usuario.nome}, o seu imc é $imc, está com sobrepeso");
    } else if (imc < 34.9) {
      OutputView.feadback("${usuario.nome}, o seu imc é $imc, está com obesidade grau 1");
    } else if (imc < 39.9) {
      OutputView.feadback("${usuario.nome}, o seu imc é $imc, está com obesidade grau 2");
    } else {
      OutputView.feadback("${usuario.nome}, o seu imc é $imc, está com obesidade grau 3");
    }
  }
}
