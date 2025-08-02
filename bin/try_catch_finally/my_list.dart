class EmptyListException implements Exception {
  final String msg;

  const EmptyListException([this.msg = 'Empty List Exception']);

  @override
  String toString() => msg;
}

class EmptyListError extends Error {
}

class MyList {
  final List<int> _list;

  MyList(this._list) {
    if (_list.isEmpty) {
      throw EmptyListError();
    }
  }

  @override
  String toString() => _list.toString();
}
