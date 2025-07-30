class Employee {
  String _name;
  String _jobTitle;
  double _salary;

  Employee(
    this._name,
    this._jobTitle,
    this._salary,
  );

  double get salary => _salary;

  set salary(double newSalary) {
    _salary = newSalary;
  }

  double calculateBonus(double bonusPercentage) {
    if (bonusPercentage <= 0) {
      return salary;
    }

    return _salary * bonusPercentage / 100;
  }
}
