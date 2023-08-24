import 'package:first_flutter_app/utils/utils.dart';

class Pessoa {
  String _nome = '';
  double _peso = 0.0;
  double _altura = 0.0;

  // Construtor
  Pessoa(this._nome, this._peso, this._altura);

  // Getters
  String get nome => _nome;
  double get peso => _peso;
  double get altura => _altura;

  // Setters
  setNome(String nome) => _nome = nome;
  setPeso(double peso) => _peso = peso;
  setAltura(double altura) => _altura = altura;

  // Métodos
  double imc() => _peso / (_altura * _altura);

  // toString
  @override
  String toString() {
    return '$_nome seu IMC é ${imc().toStringAsFixed(2)}.\n${messageByImc(imc())}';
  }
}
