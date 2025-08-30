class Student {
  final String name;
  final String admissionDate;
  final double gpa;

  Student(this.name, this.admissionDate, this.gpa);

  @override
  String toString() {
    return 'Student: $name, $admissionDate, $gpa';
  }
}

class StudentGroup {
  List<Student> students;

  StudentGroup._(this.students);

  factory StudentGroup(List<Student> students) {
    return StudentGroup._(students);
  }

  bool addStudent(Student student) {
    if (student.gpa < 2.0 || student.gpa > 4.0) {
      return false;
    }

    students.add(student);
    return true;
  }

  List<Student> searchByName(String name) {
    return students.where((e) => e.name == name).toList();
  }

  List<Student> searchByGpaRange(double minGpa, double maxGpa) {
    return students.where((s) => s.gpa >= minGpa && s.gpa <= maxGpa).toList();
  }

  @override
  String toString() {
    return students.map((student) => student.toString()).join('\n');
  }
}
