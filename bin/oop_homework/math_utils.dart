class MathUtils {
  static final double _pi = 3.14159265359;

  MathUtils();

  static double getPi() => _pi;
}

class Circle {
  Circle();

  static double calculateArea(double radius) {
    return double.parse((MathUtils.getPi() * radius * radius).toStringAsFixed(2));
  }
}

void main() {
  print(Circle.calculateArea(10));
}
