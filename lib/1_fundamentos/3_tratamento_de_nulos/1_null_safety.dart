void main() {
  String nome = '';
  String? nomeNull;

  // String? nomeNull => permite nulos;
  nome.isEmpty;

  //  String nome => Não permite permite nulos;
  // nomeNull.isEmpty;

  // porem se eu atribuir deoios um valor a ela a msm passar a servalida
  nomeNull = '';
  nomeNull.isEmpty;

  // posso tbm fazer uma validacao para ela
  if (nomeNull != null) {
    nomeNull.isEmpty;
  }
}
