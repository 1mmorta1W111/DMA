// 5. Класс "Книга" и "Библиотека"
// Создайте класс Book с полями title, author, и year.
// Создайте класс Library, который содержит коллекцию книг и методы для добавления книг, поиска по автору и году публикации.

class Book {
  String title;
  String author;
  int year;

  Book(this.title, this.author, this.year);
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
  }

  void searchByAuthor(String author) {
    books.where((book) => book.author == author).forEach((book) {
      print("Книга: ${book.title}, Автор: ${book.author}, Год: ${book.year}");
    });
  }

  void searchByYear(int year) {
    books.where((book) => book.year == year).forEach((book) {
      print("Книга: ${book.title}, Автор: ${book.author}, Год: ${book.year}");
    });
  }
}