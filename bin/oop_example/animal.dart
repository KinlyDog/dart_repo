class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void hi() {
    print('-_-');
  }
}

class Dog extends Animal {
  Dog(
    super.name,
    super.age,
  );

  @override
  void hi() {
    print('Gav!');
  }
}
