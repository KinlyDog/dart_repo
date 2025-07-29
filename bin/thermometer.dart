class Thermometer {
  final double _celsius;

  Thermometer(this._celsius);

  factory Thermometer.fromFahrenheit(double fahrenheit) {
    return Thermometer(5 / 9 * (fahrenheit - 32));
  }

  factory Thermometer.fromCelsius(double celsius) {
    return Thermometer(celsius);
  }


  //todo
  factory Thermometer.fromString(double fahrenheit) {
    return Thermometer(5 / 9 * (fahrenheit - 32));
  }

  get fahrenheit => ((_celsius * 9 / 5 + 32) * 100).roundToDouble() / 100;

  get celsius => (_celsius * 100).roundToDouble() / 100;
}
