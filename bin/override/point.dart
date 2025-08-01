class Point {
  final int _x;
  final int _y;

  Point({
    required int x,
    required int y,
  }) : _x = x,
       _y = y;

  Point operator +(Point other) {
    var newX = _x + other._x;
    var newY = _y + other._y;

    return Point(x: newX, y: newY);
  }

  Point operator -(Point other) {
    var newX = _x - other._x;
    var newY = _y - other._y;

    return Point(x: newX, y: newY);
  }

  Point operator *(int i) {
    return Point(x: _x * i, y: _y * i);
  }

  @override
  bool operator ==(Object other) {
    if (other is Point) {
      return _x == other._x && _y == other._y;
    }

    return false;
  }

  bool operator <(Point other) {
    return _x < other._x || _y < other._y;
  }

  bool operator >(Point other) {
    return _x > other._x && _y > other._y;
  }

  @override
  String toString() {
    return '$_x $_y';
  }

  @override
  int get hashCode => Object.hash(_x, _y);
}
