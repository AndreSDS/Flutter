import 'dart:math';

int generateRandomNumber(int maxNumber) {
  Random randomNumber = Random();
  return randomNumber.nextInt(maxNumber);
}
