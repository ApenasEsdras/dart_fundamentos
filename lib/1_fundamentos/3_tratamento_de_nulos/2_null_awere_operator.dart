// ignore_for_file: file_names

String? nome;
void main() {
  var sobrenome = 'Soares';
  // var nomeCompleto = ((nome != null) ? nome! + 'Soares' : 'Esdras Soares');
  var nomeCompleto = (nome ?? 'Esdras ') + sobrenome;
  print(nomeCompleto);
}
