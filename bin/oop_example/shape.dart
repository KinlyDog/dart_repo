import 'dart:math';

class Shape {
  double area() => 0;
}

class Circle extends Shape {
  final int _radius;

  Circle(this._radius);

  int get radius => _radius;

  @override
  double area() => double.parse((pi * radius * radius).toStringAsFixed(2));
}

void main() {
  var c = Circle(5);

  print(c.area());
}