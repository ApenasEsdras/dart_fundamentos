void main() {
  final numeros = [1, 2, 3, 4];
  print(numeros);
  numeros.add(8);
  print(numeros);

  print('_______________');

  final nomes = ['Esdras', 'Julia'];
  print(nomes);
  nomes.add('Violet');
  print(nomes);
  print('_______________');

  print(nomes[0]);
  print(nomes[2]);
  print('_______________');

  print('Formas de se remover um item na lista');
  print('Usando remuve');
  nomes.remove('Esdras');
  print(nomes);
  print('_______________');

  print('Usando removeWhere');
  // forma simples
  nomes.removeWhere((nome) => nome == 'esdras');

  nomes.removeWhere((nome) {
    print('procrunado $nome');
    if (nome == "Julia") {
      return true;
    } else {
      return false;
    }
  });
  print(nomes);
  print('_______________');

  print('Adicionar varios valores: addAll');
  nomes.addAll(['Julia', 'Esdras']);
  print(nomes);

  print('_______________');

  print('Encontrar valor');
  print('primeiro item com First');
  print(nomes.first);
  print('---------------');
  print('ultimo item com Last');
  print(nomes.last);

  print('_______________');

  print('Gerar dados em um arry altomaticamente');
  print('');
  print('usando  List.generate');
  final nomerosGerados = List.generate(10, (index) => index + 1);
  print(nomerosGerados);

  print('---------------');
  print('usando List.generate + concatenacao');
  final stringsGerados = List.generate(10, (index) => 'index ${index + 1}');
  print(stringsGerados);

  print('---------------');
  print('usando  List.filled');
  final repeticoes = List.filled(10, 'ola');
  print(repeticoes);

  print('_______________');

  print('concatenando listas com Spreed');
  print('');

  var listaNumericaSpreedB = [4, 45, 6];
  print(listaNumericaSpreedB);
  print('---------------');
  var listaNumericaSpreed = [1, 2, 3, ...listaNumericaSpreedB];
  print(listaNumericaSpreed);
}
