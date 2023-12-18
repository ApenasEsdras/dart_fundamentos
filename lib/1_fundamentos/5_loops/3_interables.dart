void main() {
  var numeros = List.generate(10, (index) => index);

  for (var i = 0; i < numeros.length; i++) {
    if (i == 5) {
      continue;
    }
    print(numeros[i]);
  }
  print('---------------------');
  print('Usando interables');

  numeros
      // nesse trecho ele encontra o 5 e retira ele da lista
      .where((numero) => numero != 5)
      //loop para prinatr os numeros
      .forEach((numero) => print(numero));

  print('---------------------');
  print('Usando interables com açoes encadeadas');

  final numerosAte6 = numeros
      //mapeia a lista ate o 7
      .takeWhile((numero) => numero < 7)
      //retira o  5 dfa lista
      .where((numero) => numero != 5)
      //transforma em arry
      .toList();

  print(numeros[5]);
  print(numerosAte6);

  print('---------------------');
  print('Usando interables: retire mostre apartide de...');
  // o metodo skipWhile serve para poder colocar um ponto
  //onde eu posso percorrer e mostar os dados depois dele em um lista.
  final numerosRemoveAte = numeros.skipWhile((numeros) => numeros < 6).toList();
  print(numerosRemoveAte);

  print('---------------------');
  print('Usando interables (Remover de um ponta para frente)');

  var nomes = ['Esdras', 'Julia', 'Violet', 'Robert', 'Eduart'];
  var nomesSkip = nomes.skipWhile((nome) {
    if (nome != 'Robert') {
      return true;
    } else {
      return false;
    }
  }).toList();
  print(nomesSkip);

  print('---------------------');
  print('Usando Map()');

  var numerosStringList = numeros.map((numero) {
    return '$numeroº';
  }).toList();
  print(numerosStringList);

  print('---------------------');
  print('Testes');
  var numeros2 = List.generate(101, (index) => index);
  var numeros3 = List.generate(101, (index) => index);
  print(numeros2);

  numeros2
      .where((numero) => numero % 2 == 0)
      //loop para prinatr os numeros pares
      .forEach((numero) => print(numero));

  print('nuermo impares');
  numeros3
      .where((numero) => numero % 2 == 1)
      //loop para prinatr os numeros pares
      .forEach((numero) => print(numero));
}
