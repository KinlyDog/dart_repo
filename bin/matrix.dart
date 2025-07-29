class Matrix {
  final List<List<int>> _list;

  Matrix(List<List<int>> list) : _list = list;

  int mainSum() {
    return Iterable.generate(
      _list.length,
      (i) => _list[i][i],
    ).reduce((a, b) => a + b);
  }

  int slaveSum() {
    int n = _list.length;

    return Iterable.generate(
      n,
      (i) => _list[i][(n - 1) - i],
    ).reduce((a, b) => a + b);
  }
}
