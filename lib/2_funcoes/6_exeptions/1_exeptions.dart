void main() {
  var idade = '22 anos';
 String? nome;
  try {
    int.parse(idade);
    nome!.toLowerCase();
    print('erro ao convertegr idade');
  } on FormatException catch (e, s) {
    print(e);
    // ajuda a emcontar a linha q deu erro
    print(s);
    print('deu reero meu fi');
  }
   catch (e){
    print('erro ao executar programa');
  }finally{
    print('sempre serei executado');
  }
}
