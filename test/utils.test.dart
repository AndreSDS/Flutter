import 'package:first_flutter_app/utils/utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
      'Test if the \'messageByImc\' function returns the correct message for an imc below 18.5',
      testMessageByImc);
  test(
      'Test if the \'messageByImc\' function returns \'Peso ideal.\' when the imc is between 18.6 and 24.9',
      testMessageByImcForNormalWeight);
  test(
      'Test if the \'messageByImc\' function returns the correct message for an imc between 24.9 and 29.9',
      testMessageByImcBetween24And29);
  test(
      'Test if the \'messageByImc\' function returns \'Obesidade grau I.\' when the imc is between 29.9 and 34.9.',
      testMessageByImcForObesidadeGrauI);
  test(
      'Test if the \'messageByImc\' function returns \'Obesidade grau II.\' when the imc is between 34.9 and 39.9.',
      testMessageByImcForObesidadeGrauII);
  test(
      'Test if the \'messageByImc\' function returns \'Obesidade grau III.\' when the imc is greater than 40.',
      testMessageByImcForObesidadeGrauIII);
}

void testMessageByImc() {
  double imc = 18.5;
  String result = messageByImc(imc);
  expect(result, 'Abaixo do peso.');
}

void testMessageByImcForNormalWeight() {
  double imc = 20.0;
  String expected = 'Peso ideal.';
  String result = messageByImc(imc);
  expect(result, equals(expected));
}

void testMessageByImcBetween24And29() {
  double imc = 25.0;
  String expectedMessage = 'Levemente acima do peso.';
  String result = messageByImc(imc);
  assert(result == expectedMessage);
}

void testMessageByImcForObesidadeGrauI() {
  double imc = 30.0;
  String expected = 'Obesidade grau I.';
  String result = messageByImc(imc);
  assert(result == expected);
}

void testMessageByImcForObesidadeGrauII() {
  double imc = 35.0;
  String expected = 'Obesidade grau II.';
  String result = messageByImc(imc);
  assert(result == expected);
}

void testMessageByImcForObesidadeGrauIII() {
  double imc = 40.0;
  String expected = 'Obesidade grau III.';
  String result = messageByImc(imc);
  expect(result, equals(expected));
}
