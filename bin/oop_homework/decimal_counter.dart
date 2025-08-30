class DecimalCounter {
  int _minValue;
  int _maxValue;
  int _currentValue;

  DecimalCounter._(
    this._currentValue,
    this._minValue,
    this._maxValue,
  );

  factory DecimalCounter(
    int currentValue, {
    int minValue = 0,
    int maxValue = 100,
  }) {
    return DecimalCounter._(currentValue, minValue, maxValue);
  }

  void increment() {
    if (_currentValue == _maxValue) {
      _currentValue = _minValue;
    } else {
      _currentValue++;
    }
  }

  void decrement() {
    if (_currentValue == _minValue) {
      _currentValue = _maxValue;
    } else {
      _currentValue--;
    }
  }

  int get value => _currentValue;
}

void main() {
  var dec = DecimalCounter(10);
  print(dec.value);
  dec.increment();
  print(dec.value);
  dec.decrement();
  print(dec.value);
}