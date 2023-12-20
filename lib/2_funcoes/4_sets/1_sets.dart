
void main() {
  var numerosList = <int?>[];
  numerosList.add(1);
  numerosList.add(3);
  numerosList.add(4);
  numerosList.add(3);
  numerosList.add(1);

  print(numerosList);
  
  var numerosSet = <int?>{};
  numerosSet.add(1);
  numerosSet.add(3);
  numerosSet.add(4);
  numerosSet.add(3);
  numerosSet.add(1);

  print(numerosSet);
  print('toSet() evita numeros duplicados');
  print(numerosList.toSet());
}
