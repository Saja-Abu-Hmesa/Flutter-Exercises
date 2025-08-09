class Student {
  int id;
  String name;
  double grade;
  String email;
  String address;
  String phone;


  static int _idCounter = 1;
  Student(this.name, this.grade)
      : id = _idCounter++,
        email = "Not Provided",
        address = "Not Provided",
        phone = "Not Provided";

  set setGrade(double grade) {
    if (grade >= 0 && grade <= 100) {
      this.grade = grade;
    } else {
      print("Grade must be between 0 and 100");
    }
  }

  double get getGrade => grade;

  set setEmail(String email) => this.email = email;
  String get getEmail => email;

  set setName(String name) => this.name = name;
  String get getName => name;

  set setAddress(String address) => this.address = address;
  String get getAddress => address;

  set setPhone(String phone) => this.phone = phone;
  String get getPhone => phone;

  bool isPassed() => grade >= 60;

  @override
  String toString() {
    return 'Student{id: $id, name: $name, grade: $grade, email: $email, address: $address, phone: $phone}';
  }
}

List<Student> searchByGrade(List<Student> students, double value, bool greater) {
  if (greater) {
    return students.where((s) => s.grade > value).toList();
  } else {
    return students.where((s) => s.grade < value).toList();
  }
}
