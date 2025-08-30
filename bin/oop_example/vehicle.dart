class Vehicle {
  void horn() {
    print("Vehicle sound");
  }
}

class Car extends Vehicle {
  @override
  void horn() {
    print('Beep beep!');
  }
}
