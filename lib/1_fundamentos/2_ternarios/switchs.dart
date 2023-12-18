void main() {
  // forma convencioal
  final diaDaSemana = 1;
  var diaDaSemanaStr = '';

  if (diaDaSemana == 0) {
    diaDaSemanaStr = 'segunda-feira';
    print(diaDaSemanaStr);
  } else if (diaDaSemana == 1) {
    diaDaSemanaStr = 'terça-feira';
    print(diaDaSemanaStr);
  } else {
    diaDaSemanaStr = 'Não identificado';
    print(diaDaSemanaStr);
  }

  switch (diaDaSemana) {
    case 0:
      diaDaSemanaStr = 'segunda-feira';
      break;
    case 1:
      diaDaSemanaStr = 'terça-feira';
      break;
    default:
      diaDaSemanaStr = 'Não identificado';
  }

  print(diaDaSemanaStr);
}
