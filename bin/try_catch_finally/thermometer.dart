class Thermometer {
  final double _temperature;
  final bool _isCelsius;

  Thermometer._(this._temperature, this._isCelsius);

  factory Thermometer.fromString(String t) {
    t = t.toLowerCase();
    var tryDouble = double.tryParse(t.substring(0, t.length - 1));

    if ((!t.endsWith('c') && !t.endsWith('f')) || tryDouble == null) {
      throw ArgumentError('Invalid temperature');
    }

    bool isCelsius = t.endsWith('c');
    double temp = double.parse(t.substring(0, t.length - 1));

    return Thermometer._(temp, isCelsius);
  }

  double get fahrenheit {
    if (_isCelsius) {
      return roundTo(_temperature * 9 / 5 + 32);
    }

    return roundTo(_temperature);
  }

  double get celsius {
    if (_isCelsius) {
      return roundTo(_temperature);
    }

    return roundTo((_temperature - 32) * 5 / 9);
  }

  double roundTo(double d) {
    return (d * 100).roundToDouble() / 100;
  }
}
