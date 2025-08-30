class Employee {
  final String name;
  final int id;
  int _age;
  int _salary;
  int _yearsExperience;

  Employee(
    this.name,
    this._age,
    this.id,
    this._salary,
    this._yearsExperience,
  ) {
    print('Сработал основной конструктор класса Employee');
  }

  int get salary => _salary;

  int get age => _age;

  int get experience => _yearsExperience;

  void ageIncrease() {
    _age++;
  }

  void yearsExperienceIncrease() {
    _yearsExperience++;
  }

  void salaryDown(int percent) {
    // увеличиваем оклад
    _salary -= ((_salary / 100) * percent).toInt();
  }

  void salaryUp(int percent) {
    // уменьшаем оклад
    _salary += ((_salary / 100) * percent).toInt();
  }

  @override
  String toString() {
    return 'Employee($name, $age, $id, $_salary)';
  }
}

class Plumber extends Employee {
  // наследование
  Plumber(
    super.name,
    super.age,
    super.id,
    super.salary,
    super.yearsExperience,
  );

  Plumber.withMinSalary(
    String name,
    int age,
    int id,
    int yearsExperience,
  ) : super(name, age, id, 1000, yearsExperience);

  @override
  String toString() {
    return 'Plumber($name, $age, $id, $_salary)';
  }
}

class Builder extends Employee {
  // наследование
  int _category;

  Builder(
    this._category, {
    required String name,
    required int age,
    required int id,
    required int salary,
    required int yearsExperience,
  }) : super(name, age, id, salary, yearsExperience) {
    print('Сработал основной конструктор класса Builder');
  }

  Builder.withMinSalary({
    required String name,
    required int age,
    required int id,
    required int yearsExperience,
    required int category,
  }) : _category = category,
       super(name, age, id, 3000, yearsExperience) {
    print('Сработал именованный конструктор класса Builder');
  }

  int get category => _category;

  @override
  void salaryDown(int percent) {
    // штрафуем сотрудника
    super.salaryDown(percent);
    _category--;
  }

  @override
  void salaryUp(int percent) {
    // премируем сотрудника
    super.salaryUp(percent);
    _category++;
  }

  @override
  String toString() {
    return 'Builder($name, $age, $id, $_salary, $_category, $_yearsExperience)';
  }
}

void main() {
  // var emp = Plumber('Andrey', 18, 1, 1000, 3);
  var emp2 = Builder.withMinSalary(
    name: 'Danil',
    age: 28,
    id: 2,
    category: 3,
    yearsExperience: 5,
  );

  Employee employee = emp2;
  employee.salaryUp(50);

  print(employee);
}
