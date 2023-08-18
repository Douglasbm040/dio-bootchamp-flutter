class Pessoa {
  final String _nome;
  final double _peso;
  final double _altura;

  Pessoa({required String nome, required double peso, required double altura})
      : _nome = nome,
        _peso = peso,
        _altura = altura;

  String get nome => _nome;

  set _nome(String nome) {
    _nome = nome;
  }

  double get peso => _peso;
  set _peso(double peso) {
    _peso = peso;
  }

  double get altura => _altura;
  set _altura(double altura) {
    _altura = altura;
  }
}
