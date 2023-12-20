void main() {
  var cor = Cores.verde;
  var cor2 = Cores.branco;

  print(cor);
  print(cor2);
  print('obtem o valor do enum');
  print(Cores.amarela.name);

  print('');
  print('Mapear com asMap');
  var coresMap = Cores.values.asMap();
  print(coresMap);
  print('');
  print('Mapear com asNameMap');
  var asNameMap = Cores.values.asNameMap();
  print(asNameMap);
  
}

enum Cores {
  branco,
  verde,
  azul,
  amarela,
  vermelho,
}
