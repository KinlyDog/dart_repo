class Pair<T, U> {
  T first;
  U second;

  Pair(this.first, this.second);
}

class Box<T> {
  final List<T> _items;

  Box() : _items = [];

  void addItem(T item) {
    _items.add(item);
  }

  T getItem(int index) {
    return _items[index];
  }
}
