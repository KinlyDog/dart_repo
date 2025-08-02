class MyList {
  final List<int> _list;

  MyList(this._list) {
    if (_list.isEmpty) {
      throw Exception('Empty list');
    }
  }

  @override
  String toString() => _list.toString();
}
