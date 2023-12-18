// estudoi dos ternarios
// ignore_for_file: unrelated_type_equality_checks

void main() {
  // validacao0 basica com If's
  final idade = 8;

  if (idade >= 18) {
    print('maior de idade');
  } else {
    print('menor de idade');
  }

  // simplificando
  // (condicao) ? faca isso : outra coisa
  final eMaiorDedade = idade >= 18 ? true : false;
  print('e maior de idade? $eMaiorDedade');

  // exercios
  final eMaiorDedade2 =
      idade == '18' ? 'é claro' : 'é claro q nao, sou uma string';
  print('saiu: $eMaiorDedade2');

  print((idade < 13)
      ? 'criaça'
      : (idade > 12 && idade < 18)
          ? 'adolescenmte'
          : 'Adulto');
}
