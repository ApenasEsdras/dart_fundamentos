void main() {
  final nome = 'Esdras Soares';
  final sexo = 'Masculino';
  print('==============================');
  print('estrutura de filtar string apartir de...');
  var subStringNome = nome.substring(7);
  print(subStringNome);

  print('==============================');
  print('filtar intervalos...');
  var subStringNome2 = nome.substring(0, 6);
  print(subStringNome2);

  print('==============================');
  print('filtar primeiro caracter...');

  if (sexo.toLowerCase().startsWith('mas')) {
    print('tu é Homi');
  }

  print('==============================');
  print('filtar primeiro caracter com contains...');
  if (nome.toLowerCase().contains('soares')) {
    print('Tu é muito picA');
  }

  print('==============================');
  print('filtar interpolaçao..');
  var nome2 = 'Júlia';
  var sobrenome = 'da costa';

  print('I love u $nome2 $sobrenome');

  print('==============================');
  print('filtar lista quebrando em pequnas partes.');

  var paciente = 'Esdras Soares|21|masculino| a+';
  var dadosPaciente = paciente.split('|');
  print(dadosPaciente);

  // usndo faor para printar cada dado
  for (var dados in dadosPaciente) {
    print(dados);
  }

  print('==============================');
  print('Simplificando com ForEach');
  dadosPaciente.forEach(print);

  print('==============================');
  print('filtar nomes em lista.');

  var pacientes = [
    paciente,
    'Júlia da Consta|24|o+',
    'Violte coutinho soares| -5| ?'
  ];

  for (var paciente in pacientes) {
    var dadosDosPacinetes = paciente.split('|');
    var nomeCompleto = dadosDosPacinetes[0];
    print(' $nomeCompleto');
  }

  print('==============================');
  print('Subdividindo a lista.');
  for (var paciente in pacientes) {
    var dadosDosPacinetes = paciente.split('|');
    var nomeCompleto = dadosDosPacinetes[0];
    var nomes = nomeCompleto.split(' ');

    print(nomes.last);
  }

  print('==============================');
  print('Subdividindo a lista e juntando.');
  for (var paciente in pacientes) {
    var dadosDosPacinetes = paciente.split('|');
    var nomeCompleto = dadosDosPacinetes[0];
    var nomes = nomeCompleto.split(' ');

    print('${nomes.first}  ${nomes.last}');
  }
}
