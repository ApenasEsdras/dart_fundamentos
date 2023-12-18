// ignore_for_file: file_names

void main() {
  var numeros = List.generate(10, (index) => index);

  numeros.forEach(print);

  print('');
  print('Expanded');
  print('Arry Bidimenssional');

  var lista = [
    [1, 2],
    [3, 4],
  ];
  print(lista[0][0]);

  print('');
  print('Expanded: Juntar as listas');
  var listaNova = lista.expand((numero) => numero).toList();
  print(listaNova);

  print('');
  print('any:buscar valores bo arry');
  var listaDeNomes = ['Violat', 'Esdras', 'Julia'];
  if (listaDeNomes.any((element) => element == 'Violat')) {
    print('encontrei ${listaDeNomes[2]}');
  }

  print('');
  print('.evry');
  var listaDeNomes2 = ['Esdras', 'Julia', 'Violat'];
  if (listaDeNomes2.every((nome) => nome.contains('E'))) {
    print('Todos contem leta E');
  } else {
    print('nem Todos contem leta E');
  }

  print('');
  print('Ordenando numeros com .Sort');

  var listaNumeros = [4, 88, 1, 41, 6, 9, 58, 0];
  listaNumeros.sort();
  print(listaNumeros);

  print('');
  print('Ordenando nomes com .Sort');
  var listaNomes = listaDeNomes;
  listaNomes.sort();
  print(listaNomes);

  print('Ordenacao padrao');

  var listaDePaceinetes = [
    'Manuel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernado Verme|35|estudante|MG',
    'Regina Verme|35|Dentista|MG',
    'João Rahman|55|Jornalista|SP',
    'Gustavo Silva |40|desencolvedor|MG',
    'Sandra Silva|40|desencolvedor|MG',
    'Rodrigo Rahman|35|desencolvedor|SP',
  ];

  listaDePaceinetes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePacientge1 = int.tryParse(pacienteDados1[1]) ?? 0;
    final idadePacientge2 = int.tryParse(pacienteDados2[1]) ?? 0;
    // 
    return idadePacientge1.compareTo(idadePacientge2);
  });
  print(listaDePaceinetes);
  print('');
  print('');

  var listaDePaceinetes2 = [
    'Manuel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernado Verme|35|estudante|MG',
    'Regina Verme|35|Dentista|MG',
    'João Rahman|55|Jornalista|SP',
    'Gustavo Silva |40|desencolvedor|MG',
    'Sandra Silva|40|desencolvedor|MG',
    'Rodrigo Rahman|35|desencolvedor|SP',
  ];

  listaDePaceinetes2.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePacientge1 = int.tryParse(pacienteDados1[1]) ?? 0;
    final idadePacientge2 = int.tryParse(pacienteDados2[1]) ?? 0;
    if (idadePacientge1 > idadePacientge2) {
      return 1;
    } else if (idadePacientge1 == idadePacientge2) {
      return 0;
    } else {
      return -1;
    }
  });
  print(listaDePaceinetes);
}
