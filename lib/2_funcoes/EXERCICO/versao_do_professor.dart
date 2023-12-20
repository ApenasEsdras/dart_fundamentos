// ignore_for_file: avoid_function_literals_in_foreach_calls

void main() {
  final pessoas = [
    'Jose|56|Masculino',
    'Joaguim|84|Masculino',
    'Rodirgo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaguim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Luana|29|Feminino',
  ];

  final pessoasSemDuplicados =
      pessoas.toSet().map((e) => e.split('|')).toList();
  pessoasSemDuplicados.forEach((element) => print(element[0]));

  print('');
  print('criando um map para as sexos');
  // STring e lista de nomes
  final mapaSexo = <String, List<String>>{};

  for (var pessoa in pessoasSemDuplicados) {
    final sexo = pessoa[2].toLowerCase();
    final listaMasculino = mapaSexo['M'] ?? <String>[];
    final listaFeminino = mapaSexo['F'] ?? <String>[];

    if (sexo == 'masculino') {
      listaMasculino.add(pessoa[0]);
    }
    if (sexo == 'feminino') {
      listaFeminino.add(pessoa[0]);
    }

    mapaSexo['M'] = listaMasculino;
    mapaSexo['F'] = listaFeminino;
  }
  final masculinos = mapaSexo['M']?? <String>[];
  final femininos = mapaSexo['F'] ?? <String>[];

  print('Masculinos ${masculinos.length}');
  masculinos.forEach(print);
  print('');
  print('Femininos ${femininos.length}');
  femininos.forEach(print);

  print('');
  final pessoasComMainsDe18 = pessoasSemDuplicados.where((element){
    final idade = int.tryParse(element[1]) ?? 0;
    return idade > 18;
  }).toList();
  pessoasComMainsDe18.forEach((element) => print(element[0]));
  print('');
  final pessoaOrdenada = [...pessoasSemDuplicados];
  pessoaOrdenada.sort((p1,p2){
    final idadaP1 = int.tryParse(p1[1]) ?? 0;
    final idadaP2 = int.tryParse(p2[1]) ?? 0;
    return idadaP2.compareTo(idadaP1);
  });
  final pessoaMaisVelha = pessoaOrdenada.first;
  print('pessoa mais velha é ${pessoaMaisVelha[0]} e tem ${pessoaMaisVelha[1]} anos');
}
