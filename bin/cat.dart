class Cat {
  late final String _name;
  String _address;
  int _age;
  bool _sleepState;

  Cat({
    required String name,
    required int age,
    bool sleepState = true,
    String address = 'Unknown',
  }) : _name = name,
       _address = address,
       _age = age,
       _sleepState = sleepState;

  Cat.onlyName({required String name, required int age})
    : this(
        name: name,
        age: age,
      );

  Cat.defaultCat()
    : this(
        name: 'Мурзик',
        sleepState: false,
        address: 'Пятигорск',
        age: 3,
      );
}

void main(List<String> arguments) {
  var cat = Cat(
    age: 5,
    name: 'Тимоха',
    sleepState: true,
    address: 'Питер',
  );
}
