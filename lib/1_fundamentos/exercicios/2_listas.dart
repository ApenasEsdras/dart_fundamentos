/*
### Exercício 2 (Fácil):
Crie uma classe chamada `Book` com as propriedades `title` e `author`. 
Em seguida, crie uma lista de livros e imprima o autor de cada livro
apenas se o autor estiver presente. */

// desafio pessoal, fazer com
//  For e suas variacoes (for, for in, for each)
// e com map simples

class Book {
  String? title;
  String? author;
  Book(
    this.title,
    this.author,
  );
}

void main() {
  var book = [
    Book('E o Vento levou', null),
    Book('Le Petit Prince', 'Antoine de Saint-Exupéry'),
    Book('menino maluquinho', ' Ziraldo Alves Pinto'),
  ];
// usnao for-in
  for (var books in book) {
    print(
      'Titulo: ${books.title}, Autor: ${books.author ?? 'Autor nao encontrado'}',
    );
  }
  print('_____________');
  // usnao for normal
  for (var i = 0; i < book.length; i++) {
    print(
      'Titulo: ${book[i].title}, Autor: ${book[i].author ?? 'Autor nao encontrado'}',
    );
  }
}
