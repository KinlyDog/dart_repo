class Thermometer {
  final double _temperature;
  final bool _isCelsius;

  Thermometer._(this._temperature, this._isCelsius);

  factory Thermometer.fromString(String t) {
    bool isCelsius = t.toLowerCase().endsWith('c');

    double temp = double.parse(t.substring(0, t.length - 1));

    return Thermometer._(temp, isCelsius);
  }

  double get fahrenheit {
    if (this._isCelsius) {
      return roundTo(_temperature * 9 / 5 + 32);
    }

    return roundTo(_temperature);
  }

  double get celsius {
    if (this._isCelsius) {
      return roundTo(_temperature);
    }

    return roundTo((_temperature - 32) * 5 / 9);
  }

  double roundTo(double d) {
    return (d * 100).roundToDouble() / 100;
  }
}
