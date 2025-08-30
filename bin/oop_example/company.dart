class Employee {
  final String _name;
  final int _id;
  int _salary;
  final List<String> _projects;

  Employee(
    this._name,
    this._id,
    this._salary,
    this._projects,
  );

  Employee.onlyName(this._name) : _id = 0, _salary = 1000, _projects = [];

  Employee.withMinSalary(
    this._name,
    this._id,
  ) : _salary = 1000,
      _projects = [];

  String get name => _name;

  void work() {
    print('Работник работает!');
  }

  void salaryUp(int percent) {
    _salary *= (100 + percent) ~/ 100;
  }

  void salaryDown(int percent) {
    _salary *= (100 - percent) ~/ 100;
  }

  void assignProject(String project) {
    _projects.add(project);
  }
}

class Developer extends Employee {
  String _programmingLanguage;

  Developer({
    required String name,
    required int id,
    required int salary,
    required String programmingLanguage,
    required List<String> projects,
  }) : _programmingLanguage = programmingLanguage,
       super(name, id, salary, projects);

  Developer.junior({
    required String name,
    required int id,
  }) : this(
         name: name,
         id: id,
         salary: 1500,
         programmingLanguage: 'Dart',
         projects: [],
       );

  String get programmingLanguage => _programmingLanguage;

  @override
  void work() {
    print('Developer $name пишет код на $programmingLanguage');
  }
}

class Manager extends Employee {
  final List<Employee> _team;

  Manager({
    required String name,
    required int id,
    required int salary,
    required List<Employee> team,
    required List<String> project,
  }) : _team = team,
       super(name, id, salary, project);

  Manager.withEmptyTeam({
    required String name,
    required int id,
  }) : _team = [],
       super(name, id, 500, []);

  List<Employee> get team => _team;

  void addToTeam(Employee e) {
    _team.add(e);
  }

  @override
  void work() {
    print('Manager $name управляет командой из ${team.length} человек');
  }

  void assignTeamProject(String project) {
    for (var emp in _team) {
      emp.assignProject(project);
    }
  }
}

void main() {
  List<Employee> devs = [
    Developer(name: 'Andrey', id: 0, salary: 1000, programmingLanguage: 'Dart', projects: []),
    Developer(name: 'Danil', id: 1, salary: 500, programmingLanguage: 'Java', projects: []),
  ];

  List<Employee> emps = <Employee>[
    Developer(name: 'Andrey', id: 0, salary: 1000, programmingLanguage: 'Dart', projects: []),
    Developer(name: 'Danil', id: 1, salary: 500, programmingLanguage: 'Java', projects: []),
    Manager(name: 'Maria', id: 2, salary: 300, team: devs, project: []),
    Manager.withEmptyTeam(name: 'Petr', id: 3),
  ];

  for (var emp in emps) {
    emp.work();
  }

  for (var emp in emps) {
    if (emp is Manager) {
      print(emp.team);
    }

    if (emp is Developer) {
      print(emp.programmingLanguage);
    }
  }
}
