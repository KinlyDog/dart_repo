class Car {
  String _make;
  String _model;

  Car._(
    this._make,
    this._model,
  );

  factory Car.create(
    String make,
    String model,
  ) {
    if (make.isEmpty || model.length < 3) {
      throw ArgumentError();
    }

    return Car._(make, model);
  }
}
