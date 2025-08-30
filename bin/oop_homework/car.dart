class Car {
  static int _totalCarsCount = 0;

  Car() {
    _totalCarsCount++;
  }

  int getTotalCarsCount() => _totalCarsCount;
}

void main() {
  for (var i in Iterable.generate(10)) {
    Car();
  }

  var car = Car();
  print(car.getTotalCarsCount());
}
