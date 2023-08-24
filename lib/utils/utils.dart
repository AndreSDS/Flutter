String messageByImc(double imc) {
  Map tableMessage = {
    'abaixo': 'Abaixo do peso.',
    'normal': 'Peso ideal.',
    'sobrepeso': 'Levemente acima do peso.',
    'obesidade1': 'Obesidade grau I.',
    'obesidade2': 'Obesidade grau II.',
    'obesidade3': 'Obesidade grau III.'
  };

  if (imc < 18.6) {
    return tableMessage['abaixo'];
  } else if (imc >= 18.6 && imc < 24.9) {
    return tableMessage['normal'];
  } else if (imc >= 24.9 && imc < 29.9) {
    return tableMessage['sobrepeso'];
  } else if (imc >= 29.9 && imc < 34.9) {
    return tableMessage['obesidade1'];
  } else if (imc >= 34.9 && imc < 39.9) {
    return tableMessage['obesidade2'];
  } else if (imc >= 40) {
    return tableMessage['obesidade3'];
  }

  return '';
}
