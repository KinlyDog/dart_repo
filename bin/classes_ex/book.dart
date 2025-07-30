class Book {
  int price;
  String author;
  String title;

  Book(this.price, this.author, this.title);

  factory Book.priceWithRoalty({
    required int price,
    required String author,
    required String title,
  }) {
    return Book(price + 500, author, title);
  }
}

void main() {
  var book = Book(500, 'Andrey', 'Sex and Whiskey');
  var book2 = Book(500, 'Andrey', 'Sex and Whiskey');
  print(identical(book, book2));
}
