import 'package:first_flutter_app/classes/pessoa.dart';
import 'package:first_flutter_app/utils/utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Test if the getters return the expected values', testGetters);
  test(
      'Test if the setters update the attribute values and if the getters return the updated values',
      testSettersAndGetters);
  test('Test if the \'imc\' method returns the correct value',
      testIMCCalculation);
  test(
      'Test if the \'toString\' method returns a string containing the name, calculated IMC, and message related to the IMC.',
      testToStringMethod);
}

void testGetters() {
  // Arrange
  String nome = 'John';
  double peso = 70.0;
  double altura = 1.75;
  Pessoa pessoa = Pessoa(nome, peso, altura);

  // Act
  String nomeResult = pessoa.nome;
  double pesoResult = pessoa.peso;
  double alturaResult = pessoa.altura;

  // Assert
  expect(nomeResult, equals(nome));
  expect(pesoResult, equals(peso));
  expect(alturaResult, equals(altura));
}

void testSettersAndGetters() {
  Pessoa pessoa = Pessoa('John Doe', 70.0, 1.75);

  pessoa.setNome('Jane Doe');
  pessoa.setPeso(65.0);
  pessoa.setAltura(1.70);

  assert(pessoa.nome == 'Jane Doe');
  assert(pessoa.peso == 65.0);
  assert(pessoa.altura == 1.70);
}

void testIMCCalculation() {
  Pessoa pessoa = Pessoa('John Doe', 70.0, 1.75);
  double expectedIMC = 22.86;
  double actualIMC = pessoa.imc();
  expect(actualIMC, equals(expectedIMC));
}

void testToStringMethod() {
  Pessoa pessoa = Pessoa('John Doe', 70.0, 1.75);
  String result = pessoa.toString();
  expect(result.contains(pessoa.nome), true);
  expect(result.contains(pessoa.imc().toStringAsFixed(2)), true);
  expect(result.contains(messageByImc(pessoa.imc())), true);
}
