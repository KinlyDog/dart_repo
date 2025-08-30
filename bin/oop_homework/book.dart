class Book {
  final String title;
  final String author;
  final int year;
  final double weight;
  final double price;

  const Book(
    this.title,
    this.author,
    this.year,
    this.weight,
    this.price,
  );
}

class Bookshelf {
  final double maxWeight;
  final int maxBooks;
  List<Book> books = [];

  Bookshelf(this.maxWeight, this.maxBooks);

  bool addBook(Book book) {
    if (books.length >= maxBooks ||
        calculateTotalWeight() + book.weight > maxWeight) {
      return false;
    }

    books.add(book);
    return true;
  }

  List<Book> searchByAuthor(String author) {
    return books.where((b) => b.author == author).toList();
  }

  double calculateTotalPrice() {
    return books.fold(0, (sum, book) => sum + book.price);
  }

  double calculateTotalWeight() {
    return books.fold(0, (sum, book) => sum + book.weight);
  }

  List<Book> getBooksWithPriceAbove(double minPrice) {
    return books.where((e) => e.price >= minPrice).toList();
  }
}
