// ignore_for_file: prefer_function_declarations_over_variables

void main() {
  print('Funçoes arrow');
  print('${somaInteriosArrow(10, 10)}');
  print('');

  print('Funcoes anonimas:');
  var funcaoAnonima = () {
    return '200';
  };
  print(funcaoAnonima());

  void chamaFuncao(FuncaoQueRecebeNome nome){

  }
}

int somaInteriosArrow(int num1, int num2) => (num1 + num2);
typedef FuncaoQueRecebeNome = void Function(String nome);
