void main() {
  /*
  Detalhes sobre a String
  A String é composta por 4 campos [Nome|Idade|Profissão|Esatado]
  */

  var desencolvedor = [];
  var estudante = [];
  var dentista = [];
  var jornalista = [];
  var pacienetesDeSp = [];

  final pacientes = [
    'Manuel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernado Verme|35|estudante|MG',
    'Regina Verme|35|Dentista|MG',
    'João Rahman|55|Jornalista|SP',
    'Gustavo Silva |40|desencolvedor|MG',
    'Sandra Silva|40|desencolvedor|MG',
    'Rodrigo Rahman|35|desencolvedor|SP',
  ];
  for (var paciente in pacientes) {
    var dadosDosPacinetes = paciente.split('|');
    var nomeCompleto = dadosDosPacinetes[0];
    var profisao = dadosDosPacinetes[2].toLowerCase();
    var idade = int.tryParse(dadosDosPacinetes[1]) ?? 0;
    if (paciente.contains('SP')) {
      pacienetesDeSp.add(nomeCompleto);
    }
    if (idade > 20) {
      print('$nomeCompleto  $idade');
    }
    if (profisao.contains('desencolvedor')) {
      desencolvedor.add(nomeCompleto);
    }
    if (profisao.contains('dentista')) {
      dentista.add(nomeCompleto);
    }
    if (profisao.contains('estudante')) {
      estudante.add(nomeCompleto);
    }
    if (profisao.contains('jornalista')) {
      jornalista.add(nomeCompleto);
    }
  }

  print('------------------------');
  print('pacientes para cada profisao ');
  print('');
  print('desencolvedor');
  desencolvedor.forEach(print);
  print('');
  print('dentista');
  dentista.forEach(print);
  print('');
  print('jornalista');
  jornalista.forEach(print);
  print('');
  print('estudante');
  estudante.forEach(print);

  print('------------------------');
  print('pacientes para SP ');
  pacienetesDeSp.forEach(print);

  // Baseado no ARRy acima moste um relatorio onde:
  /*
   X 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
   X 2 - Apresenmte quantos pacientes existe para cada profisao  
        (desencolvedor,estudante,Dentista,Jornalista);
   X 3 - Apresente a quantidade de  pacientes que moram em SP
  */
}
