class Cube {
  final int _sideLength;

  const Cube(this._sideLength);

  int calculateVolume() {
    return _sideLength * _sideLength * _sideLength;
  }
}
