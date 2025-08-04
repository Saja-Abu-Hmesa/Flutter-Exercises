import 'dart:io';

void main() {
  // task 1
  stdout.write("Enter your age: ");
  var age = int.parse(stdin.readLineSync()!);
  if (age >= 18) {
    print("You are eligible to vote ");
  } else {
    print("You are not eligible to vote yet.");
  }
  print("=================================================================");
  //task 2
  for (int i = 1; i <= 20; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
  print("=================================================================");
  // task 3
  while (true) {
    var pass = stdin.readLineSync();
    if (pass == "admin123") {
      print("Access granted");
      break;
    } else {
      print("Incorrect password, try again.");
    }
  }
print("=================================================================");
  // Task 4
  stdout.write("Enter your score: ");
  var score = int.parse(stdin.readLineSync()!);
  if (score >= 90) {
    print("Excellent you got an A");
  } else if (score >= 80 && score < 90) {
    print("very good you got an B");
  } else if (score >= 70 && score < 80) {
    print("good you got an C");
  } else if (score <= 70) {
    print("You need improvement, you got an D");
  }
print("=================================================================");
  // Task 5
  var number = stdin.readLineSync();
  switch (number) {
    case "1":
      print("Sunday");
      break;
    case "2":
      print("Monday");
      break;
    case "3":
      print("Tuesday");
      break;
    case "4":
      print("Wednesday");
      break;
    case "5":
      print("Thursday");
      break;
    case "6":
      print("Friday");
      break;
    case "7":
      print("Saturday");
      break;
    default:
      print("Invalid input");
  }
print("=================================================================");
  // task 6
  var username = stdin.readLineSync();
  var password = stdin.readLineSync();
  var role = stdin.readLineSync();
  if (username == "manager" && password == "admin@123" && role == "admin") {
    print("Welcome Admin Manager full access granted ");
  } else if (username == "manager" &&
      password == "admin@123" &&
      role != "admin") {
    print("Access Denied Admin role required");
  } else if (username == "guest" && password == "user@123" && role == "user") {
    print("Welcome guest limited access granted ");
  } else if (username == "guest" && password != "user@123" && role == "user") {
    print("Incorrect Password ");
  } else if (username != "manager" && username != "guest") {
    print("Unknown username");
  } else {
    print("Invalid credentials");
  }
}
