int divideNumbers(int a, int b) {
  if (b == 0) {
    throw CustomException('DivideByZero');
  }

  return a ~/ b;
}

class CustomException implements Exception {
  final String _e;

  CustomException(this._e);

  @override
  String toString() {
    return _e;
  }
}
