/*
### Exercício 1 (Fácil):
Crie uma classe chamada `Person` com as propriedades `name` e `age`. 
Em seguida, crie uma instância dessa classe e imprima o nome da pessoa
 apenas se o nome não for nulo.
*/

class Person {
  String? name;
  num? age;
  Person(
    this.name,
    this.age,
  );
}

void main() {
  Person cuca = Person('Esdras', 25);
// forma padrão
  if (cuca.name != null) {
    print('Nome: ${cuca.name}');
  } else {
    print('Nome nao encontrado');
  }
  // com o operator
  print(
    'Nome: ${cuca.name ?? 'nome não disponivel'}',
  );

  // acessadnmo diretamebntio a class e usando o operator
  // se não for nulo printa o valor da variuavel, se for nulo printa 'nome não disponivel'
  print(Person(null, null).name ?? 'nome não disponivel');
  print(Person('Esdras', 22).name ?? 'nome não disponivel');
}

// ====================================================================== //


/*
### Exercício 3 (Médio):
Crie uma classe chamada `Car` com as propriedades `model` e `manufacturer`.
 Em seguida, crie uma lista de carros e imprima o modelo do carro apenas 
 se o fabricante for "Ford".
 */


/*
### Exercício 4 (Médio):
Crie uma classe chamada `Country` com as propriedades `name` e `capital`. 
Em seguida, crie uma lista de países e imprima a capital apenas se o nome 
do país começar com a letra "B".
*/


/*

### Exercício 5 (Médio):
Crie uma classe chamada `Song` com as propriedades `title`, `artist` e `album`. 
Em seguida, crie uma lista de músicas e imprima o título, o artista e o álbum
 apenas se o artista for "Ed Sheeran".
*/

/*
Lembre-se de utilizar o acesso condicional de propriedades (o operador `?.` 
em Dart) para evitar exceções quando as propriedades são nulas. Boa prática! */