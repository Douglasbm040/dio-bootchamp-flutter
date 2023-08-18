import 'dart:io';
import 'package:imccalculate/modules/validation/validation.dart';
import 'package:imccalculate/modules/models/pessoa.dart';

class InputView with Parsedouble {
String _inputName() {
    print("Digite seu nome: ");
    return stdin.readLineSync()!;
  }

  double? _inputpeso() {
    print("Digite sua peso: ");
    String resposta = stdin.readLineSync()!;
    double? peso = parsedouble(resposta, _inputpeso);
    return peso;
  }

  double? _inputaltura() {
    print("Digite sua altura: ");
    String resposta = stdin.readLineSync()!;
    double? altura = parsedouble(resposta, _inputpeso);
    return altura;
  }

  Pessoa run() {
    String nome = _inputName();
    double peso = _inputpeso()!;
    double altura = _inputaltura()!;
    return Pessoa(nome: nome, peso: peso, altura: altura);
  }
}
