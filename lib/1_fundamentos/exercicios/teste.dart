void main() {
  // Detalhes sobre a String
  // A String é composta por 4 campos [Nome|Idade|Profissão|Estado]

  final profissoes = {
    'desenvolvedor': 0,
    'estudante': 0,
    'dentista': 0,
    'jornalista': 0,
  };

  var pacientesDeSP = 0;

  final pacientes = [
    'Manuel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verme|35|estudante|MG',
    'Regina Verme|35|Dentista|MG',
    'João Rahman|55|Jornalista|SP',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|desenvolvedor|MG',
    'Rodrigo Rahman|35|desenvolvedor|SP',
  ];

  for (var paciente in pacientes) {
    var dadosDoPaciente = paciente.split('|');
    var nomeCompleto = dadosDoPaciente[0];
    var idade = int.parse(dadosDoPaciente[1]);
    var profissao = dadosDoPaciente[2].toLowerCase();

    if (paciente.contains('SP')) {
      pacientesDeSP++;
    }

    if (idade > 20) {
      print('$nomeCompleto $idade');
    }

    profissoes[profissao] = (profissoes[profissao] ?? 0) + 1;
  }

  print('------------------------');
  print('Pacientes por profissão:');
  profissoes.forEach((profissao, quantidade) {
    print('$profissao: $quantidade');
  });

  print('------------------------');
  print('Pacientes em SP:');
  print(pacientesDeSP);

  // Baseado no Array acima, mostre um relatório onde:
  // 1 - Apresente os pacientes com mais de 20 anos e imprima o nome deles
  // 2 - Apresente a quantidade de pacientes para cada profissão
  // 3 - Apresente a quantidade de pacientes que moram em SP
}
