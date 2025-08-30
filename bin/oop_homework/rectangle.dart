class Rectangle {
  double _width;
  double _height;

  Rectangle._(this._width, this._height);

  Rectangle.square(double sideLength)
      : this._(sideLength, sideLength);

  double getArea() {
    return _width * _height;
  }
}

void main() {
  var rec = Rectangle.square(5);
  print(rec.getArea());
}