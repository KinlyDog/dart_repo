class Cat {
  final String name;
  final String address;
  final int age;
  final bool sleepState;

  const Cat({
    required this.name,
    required this.address,
    required this.age,
    required this.sleepState,
  });

  Cat copyWith({
    String? name,
    String? address,
    int? age,
    bool? sleepState,
  }) {
    return Cat(
      name: name ?? this.name,
      address: address ?? this.address,
      age: age ?? this.age,
      sleepState: sleepState ?? this.sleepState,
    );
  }
}
