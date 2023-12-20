void main() {
  /// A string é composta por 4 campos [Nome,Idade,Sexo]

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
  final listaOrganizadaDePessas = <String>{};
  final mapFilterSexoMasculino = <String>[];
  final mapFilterSexoFeminino = <String>[];
  final listaPessoasMaiorDeIdade = <String>[];

  pessoas.sort((pessoa1, pessoa2) {
    final dadoPessoa1 = pessoa1.split('|');
    final dadoPessoa2 = pessoa2.split('|');

    final idadePacientge1 = int.tryParse(dadoPessoa1[1]) ?? 0;
    final idadePacientge2 = int.tryParse(dadoPessoa2[1]) ?? 0;
    return idadePacientge1.compareTo(idadePacientge2);
  });

  print('Lista inicial:');
  print('tot List antes: ${pessoas.length}');
  print(pessoas);

  print('');
  print('Lista organizada');
  listaOrganizadaDePessas.addAll(pessoas);
  // pessoas.where((dados) => listaOrganizadaDePessas.add(dados)).toList();
  print(listaOrganizadaDePessas.toList());

  print('');
  print('Quantidade de pessoas');

  print('');
  print('Dados por sexo:');

  for (var dadosUnicos in listaOrganizadaDePessas) {
    final dadoPessoa = dadosUnicos.split('|');

    final sexo = dadoPessoa[2].toLowerCase();
    if (sexo == 'masculino') {
      mapFilterSexoMasculino.add(dadosUnicos);
    } else if (sexo == 'feminino') {
      mapFilterSexoFeminino.add(dadosUnicos);
    } else {
      continue;
    }
  }

  for (var dadosUnicos in listaOrganizadaDePessas) {
    final dadoPessoa = dadosUnicos.split('|');

    final idade = int.tryParse(dadoPessoa[1]) ?? 0;
    if (idade > 18) {
      listaPessoasMaiorDeIdade.add(dadosUnicos);
    }
  }

  print('Homens');
  print('tot H: ${mapFilterSexoMasculino.length}');
  print(mapFilterSexoMasculino.toList());
  print('');
  print('Mulheres');
  print('tot M: ${mapFilterSexoFeminino.length}');
  print(mapFilterSexoFeminino.toList());

  print('');
  print('Pessoas com mais de 18: ${listaPessoasMaiorDeIdade.toList()}');
  print('');
  print('Pessoa mais velha: ${pessoas.last.split('|')[0]}');

  /// Baseado n a lista acima:
  /// [1 - Remova os pacientes duplicados e apresente a nova lista]
  /// [2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino)  e depois me apresente o  nome delas]
  /// [3 - filtrar e deixar a lista somete com pessoas maiores de 18 anos e apresentar os nomes]
  /// X [4 - encontre a pessoa mais velha e apresente o nome;]
}
