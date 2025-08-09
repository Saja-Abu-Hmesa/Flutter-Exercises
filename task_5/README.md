
#   STUDENT MANAGEMENT SYSTEM (Dart)         #


DESCRIPTION:
  A simple Dart program to manage students, 
  demonstrating classes, getters/setters, 
  static variables, and filtering.

FEATURES:
  - Auto-generated student ID (static counter)
  - Grade validation (0 - 100)
  - Default values for email, address, phone
  - Getters and setters for all fields
  - Check if student passed (grade >= 60)
  - Search students by grade (greater/less than)

----------------------------------------------
CLASS: Student
----------------------------------------------
FIELDS:
  * id       -> Auto increment
  * name     -> Student's name
  * grade    -> Student's grade
  * email    -> Email (default: "Not Provided")
  * address  -> Address (default: "Not Provided")
  * phone    -> Phone (default: "Not Provided")

METHODS:
  * setGrade(value)  -> Validates and sets grade
  * getGrade()       -> Returns grade
  * setEmail(value)  -> Sets email
  * getEmail()       -> Returns email
  * setName(value)   -> Sets name
  * getName()        -> Returns name
  * setAddress(val)  -> Sets address
  * getAddress()     -> Returns address
  * setPhone(value)  -> Sets phone
  * getPhone()       -> Returns phone
  * isPassed()       -> true if grade >= 60
  * toString()       -> String representation

----------------------------------------------
FUNCTION: searchByGrade
----------------------------------------------
**Filters students based on grade.**
* greater = true  -> return students with grade > value
* greater = false -> return students with grade < value
Dart Code:
```dart
List<Student> searchByGrade(List<Student> students, double value, bool greater) {
  if (greater) {
    return students.where((s) => s.grade > value).toList();
  } else {
    return students.where((s) => s.grade < value).toList();
  }
}
