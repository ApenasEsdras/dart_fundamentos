// ignore_for_file: file_names
void main() {
  print('parametros Obrigatorios por default');
  print('A soma de 10 + 10 é ${somoInterios(10, 10)}');

  print('');
  print('parametros Nomeados');
  print('São nulables por defalt');
  print('e os parametros nomeados podem ser '
      'elevados para non-null com checagem de null');

  print('A soma de 10.2 + 10.2 é ${somaDoubles(num1: 10.2, num2: 10.2)}');

  print('');
  print('tbm nao presiso parssar no ardem, pelo fato de serm nomeados '
      'o parametro sabera seu valor ao atribuirmos ele');
  print('A soma de 10.2 + 10.2 é ${somaDoubles(num2: 10.2, num1: 10.2)}');

  print('');
  print('Parametros obriggatorios e nomeados');
  print('A soma de 10.2 + 10.2 é ${somaDoubles2(num2: 10.4, num1: 10.2)}');

  print('');
  print('Parametros nomeados non-null');
  print('A soma de null + 10.2 é ${somaDoubles3(num2: null, num1: 10.2)}');
}

int somoInterios(
  int num1,
  int num2,
) {
  return num1 + num2;
}

double somaDoubles({
  double? num1,
  double? num2,
}) {
  // elevacao de null para non-null
  if (num1 != null && num2 != null) {
    return num1 + num2;
  }
  return 0.0;
}

double somaDoubles2({
  // parametros onrigatorios nomedados
  required double num1,
  required double num2,
}) {
  return num1 + num2;
}

double somaDoubles3({
  required double? num1,
  required double? num2,
}) {
  num1 ??= 0;
  num2 ??= 0;
  return num1 + num2;
}
