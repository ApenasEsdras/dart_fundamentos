void main() {
  /// A string é composta por 4 campos [Nome, Idade, Sexo]

  final pessoas = [
    'Jose|56|Masculino',
    'Joaguim|84|Masculino',
    'Rodrigo Rahman|35|Masculino', // Corrigido o nome "Rodirgo" para "Rodrigo"
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

  final listaOrganizadaDePessoas = <String>{}; // Corrigido para List<String>
  final mapFilterSexoMasculino = <String>[]; // Corrigido para List<String>
  final mapFilterSexoFeminino = <String>[]; // Corrigido para List<String>
  final listaPessoasMaiorDeIdade = <String>[]; // Corrigido para List<String>

  pessoas.sort((pessoa1, pessoa2) {
    final dadoPessoa1 = pessoa1.split('|');
    final dadoPessoa2 = pessoa2.split('|');

    final idadePaciente1 = int.tryParse(dadoPessoa1[1]) ?? 0; // Corrigido para idadePaciente1
    final idadePaciente2 = int.tryParse(dadoPessoa2[1]) ?? 0; // Corrigido para idadePaciente2
    return idadePaciente1.compareTo(idadePaciente2);
  });

  print('Lista inicial:');
  print(pessoas);

  print('');
  print('Lista organizada');

  listaOrganizadaDePessoas.addAll(pessoas); // Corrigido para adicionar todos os elementos
  print(listaOrganizadaDePessoas.toList());

  print('');
  print('Quantidade de pessoas: ${pessoas.length}'); // Adicionado o tamanho da lista

  print('');
  print('Dados por sexo:');

  for (var dadosUnicos in listaOrganizadaDePessoas) {
    final dadoPessoa = dadosUnicos.split('|');

    final sexo = dadoPessoa[2].toLowerCase();
    if (sexo == 'masculino') {
      mapFilterSexoMasculino.add(dadosUnicos);
    } else if (sexo == 'feminino') {
      mapFilterSexoFeminino.add(dadosUnicos);
    }
  }

  for (var dadosUnicos in listaOrganizadaDePessoas) {
    final dadoPessoa = dadosUnicos.split('|');

    final idade = int.tryParse(dadoPessoa[1]) ?? 0;
    if (idade > 18) {
      listaPessoasMaiorDeIdade.add(dadosUnicos);
    }
  }

  print('Homens');
  print(mapFilterSexoMasculino);
  print('');
  print('Mulheres');
  print(mapFilterSexoFeminino);

  print('');
  print('Pessoas com mais de 18: $listaPessoasMaiorDeIdade');
  print('');
  print('Pessoa mais velha: ${pessoas.last.split('|')[0]}'); // Obtendo apenas o nome da pessoa mais velha

  /// Baseado na lista acima:
  /// [1 - Remova os pacientes duplicados e apresente a nova lista]
  /// [2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas]
  /// [3 - filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresentar os nomes]
  /// X [4 - encontre a pessoa mais velha e apresente o nome;]
}
