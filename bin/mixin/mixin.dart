class RUB {
  int _val;

  RUB._(this._val);

  factory RUB.fromStr(String value) {
    var rub = (double.parse(value) * 100).toStringAsFixed(0);
    return RUB._(int.parse(rub));
  }

  RUB.kopek(this._val);

  int get value => _val;

  @override
  String toString() {
    var rub = (value / 100).toStringAsFixed(2);
    return 'RUB($rub)';
  }
}

mixin Inflation on RUB {
  RUB inflation(int percent) {
    return switch (percent) {
      != 0 => RUB.kopek(value - (value * percent / 100).ceil()),
      _ => RUB.kopek(value),
    };
  }
}

mixin YearPercent on RUB {
  int percent = 14;

  RUB yearEnd() {
    return RUB.kopek(value + (value * percent / 100).ceil());
  }
}

class PaperRUB extends RUB with Inflation {
  PaperRUB._(super.value) : super.kopek();

  PaperRUB.kopek(super.value) : super.kopek();

  PaperRUB.rub50() : this._(5000);

  PaperRUB.rub100() : this._(10000);
}

class BankBox extends RUB with YearPercent, Inflation {
  BankBox._(super.value, int bankPercent) : super.kopek() {
    percent = bankPercent;
  }

  factory BankBox.fromStr(String value, int bankPercent) {
    var rub = (double.parse(value) * 100).toStringAsFixed(0);
    return BankBox._(int.parse(rub), bankPercent);
  }
}

void main() {
  var rub = PaperRUB.rub100();
  print(rub); // RUB(100.00)
  print(rub.inflation(-13)); // RUB(113.00)
  print(rub.inflation(13)); // RUB(87.00)
  print(rub.inflation(0)); // RUB(100.00)

  var bankBox = BankBox.fromStr('1000000', 23);
  print(bankBox); // RUB(1000000.00)
  print(bankBox.yearEnd()); // RUB(1230000.00)
}
