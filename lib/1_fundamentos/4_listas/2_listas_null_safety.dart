void main() {
  // ? = Nullable (aceita nulo)
  //sem nada (padrão) = non-null (nãO aceita nulo)

  //nao aceita nulo e estou definindo o tipo de dado q a lista contera
  var nomes = <String>[];

  //aceita nulo
  List<String>? nomesNulos;

  //Lista e items não podem ser nulos
  List<String> nomesInteirosNaoAceitaNulos = ['Esdras'];
  var nomesInteirosNaoAceitaNulosSimplificada = <String>['Esdras'];

  // lista Não pode ser nula porem os item podem ser nulos
  List<String?> nomesInteirosAceitaNulos2 = [null, 'Esdras'];
  var nomesInteirosAceitaNulos2Simplificada = <String?>[null, 'Esdras'];

// lista e item, podem ser nulos
  List<String?>? nomesInteirosAceitaNulos3 = null;

  print(nomes);
  print('------------');
  print(nomesNulos);
  print('------------');
  print(nomesInteirosNaoAceitaNulos);
  print(nomesInteirosNaoAceitaNulosSimplificada);
  print('------------');
  print(nomesInteirosAceitaNulos2);
  print(nomesInteirosAceitaNulos2Simplificada);
  print('------------');
  print(nomesInteirosAceitaNulos3);
}
