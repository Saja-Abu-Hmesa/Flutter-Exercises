import 'student.dart';

void main() {

  List<Student> students = [
    Student("Saja", 95),
    Student("Rua", 90),
    Student("Duha", 55),
  ];


  students[0].setEmail = "saja@gmail.com";
  students[0].setAddress = "123 Main St";
  students[0].setPhone = "123456789";

  students[1].setEmail = "Rua@gmail.com";
  students[1].setAddress = "456 Park Ave";
  students[1].setPhone = "987654321";

  students[2].setEmail = "Duha@gmail.com";
  students[2].setAddress = "789 King Rd";
  students[2].setPhone = "555555555";

  print("All Students: ");
  students.forEach((s) => print(s.toString()));


  print("\nStudents with grade > 70: ");
  var highGrades = searchByGrade(students, 70, true);
  highGrades.forEach((s) => print(s.toString()));

  students[2].setPhone = "111222333";
  print("\nUpdated Duha's phone: ");
  print(students[2].toString());


  students.sort((a, b) => b.grade.compareTo(a.grade));
  print("\nStudents sorted by grade: ");
  students.forEach((s) => print(s.toString()));


  print("\nStudents who passed: ");
  students.where((s) => s.isPassed()).forEach((s) => print(s.toString()));
}
