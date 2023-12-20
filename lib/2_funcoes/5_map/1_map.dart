void main() {
  // presiza do <String, String>{ } para poder represenatr um map
  final paciente = <String, String>{
    'nome': 'Esdras',
    'curso': 'ADS',
  };

  Map<String, String>? pacienteNull = null;

  var paciente2 = <String?, String?>{
    null: 'Esdras',
    'curso': null,
  };
  var paciente3 = <String, String?>{
    'nome': 'Esdras',
    'curso': null,
  };
  var paciente4 = <String?, String>{
    null: 'Esdras',
    'curso': 'ADS',
  };

  print(pacienteNull);
  print(paciente);
  print(paciente2);
  print(paciente3);
  print(paciente4);

  print('');
  print('manipulando maps()');
  print('');
  print('só adiciona se a chave nao existir');
  var produtos = <String, String>{};
  produtos.putIfAbsent('nome', () => 'wacom');
  produtos.putIfAbsent('nome', () => 'wacom2');
  print(produtos);

  print('');
  print('update');
  produtos.update('nome', (value) => 'wacom2');
  print(produtos);

  print('');
  print('recuperar valor');
  print('${produtos['nome']}');

  print('');
  print('mapear toda a lista');
  produtos.forEach((key, value) {
    print('Chave: $key : $value');
  });

  print('');
  print('mapear toda a lista asincrona');
  for (var entrry in produtos.entries) {
    print('Chave: ${entrry.key} : ${entrry.value}');
  }

  print('');
  print('mapear todas as chaves asincrona');
  for (var key in produtos.keys) {
    print('Chave: $key');
  }

  print('');
  print('mapear todos os valores asincrona');
  for (var value in produtos.values) {
    print('valor: $value');
  }

  print('');
  print('maps dento de mapas');

  var mapa = <String, Object>{
    'Nome': 'Esdars Soares',
    'curos': [
      {
        'nome': 'ADS',
        'Descricao': 'Terminando',
      },
      {
        'nome': 'Flutter',
        'Descricao': 'Terminando',
      },
    ],
  };

  print(mapa);
}
