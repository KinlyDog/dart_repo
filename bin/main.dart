import 'untitled.dart';

void main() {
  var cat = Cat(
    name: 'name',
    address: 'address',
    age: 15,
    sleepState: false,
  );

  print(cat.name);
  cat = cat.copyWith(name: 'Vasya');
  print(cat.name);
}
