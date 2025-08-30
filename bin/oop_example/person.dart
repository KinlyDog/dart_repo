class Person {
  final String _name;
  final int _age;

  Person(
    this._name,
    this._age,
  );

  String get name => _name;

  int get age => _age;

  void describe() {
    print(
      'Person:\n'
      'name:$name\n'
      'age: $age',
    );
  }
}

class Student extends Person {
  int _grade;

  Student({
    required String name,
    required int age,
    required int grade,
  }) : _grade = grade,
       super(name, age);

  Student.withDefaultGrade({
    required String name,
    required int age,
  }) : _grade = 5,
       super(name, age);

  get grade => _grade;

  @override
  void describe() {
    super.describe();
    print('grade: $grade\n');
  }

  void increaseGrade() {
    _grade++;
  }
}

class Teacher extends Person {
  final String _subject;

  Teacher({
    required String name,
    required int age,
    required String subject,
  }) : _subject = subject,
       super(name, age);

  get subject => _subject;

  void promoteStudent(Student student) {
    student.increaseGrade();
  }

  @override
  void describe() {
    super.describe();
    print('subject: $subject\n');
  }
}

void main() {
  var student = Student(name: 'Andrey', age: 18, grade: 4);
  student.describe();

  print('');

  var student2 = Student.withDefaultGrade(name: 'Danil', age: 23);
  student2.describe();

  Person teacher = Teacher(name: 'Anatoly', age: 35, subject: 'math');

  if (teacher is Teacher) {
    print(teacher.subject);
  }

  var persons = <Person>[
    Student(name: 'Michael', age: 18, grade: 3),
    Teacher(name: 'Denny', age: 38, subject: 'martial arts')
  ];

  for (var person in persons) {
    person.describe();
  }
}
