void main() {
  /* usa-se o for normal quando quero e preciso
  fazer alguma condicionau ou  trataento dos
  dados enqunato estou no loop*/

  print('Usando FOR Simples');
  var numeros = List.generate(11, (index) => index);
  print(numeros);
  print('----------------');
  var nomes = ['Esdras', 'Julia', 'Violet'];
  print(nomes);
  print('----------------');
  print('Prin. numero um a um');

  for (var i = 0; i < numeros.length; i++) {
    print(numeros[i]);
  }
  print('');
  print('Prin. nomes um a um');
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
  }
  print('----------------');

  print('Usando for-in');
  print('imprimindo nomes com for-in');
  print('');
  for (var nome in nomes) {
    print(nome);
    print('');
  }
  print('----------------');
  print('imprimindo numeros com for-in');
  for (var numero in numeros) {
    print(numero);
  }
  print('----------------');
  print('');
  print('usando condiconais no for simples tornado ele um monstro');
  print('');
  print('Print. nomes um a um');
  print('');
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
    if (nomes[i] == 'Julia') {
      print('Achei o/a ${nomes[i]}');
      break;
    }
  }

  print('----------------');
  print('Tbm posso pular um oumais dados na execucao do loop');

  print('');
  for (var i = 0; i < nomes.length; i++) {
    if (nomes[i] == 'Julia') {
      print('pulie o/a ${nomes[i]}');
      continue;
    }
    nomes.add('ola');
    print(nomes[i]);
  }
}
