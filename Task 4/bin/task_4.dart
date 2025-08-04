void main() {
  // task1
  greet(name: "Layla");
  greet(name: "Ali", greeting: "Welcome");
  //Task 2
  print("=========================================================");

  registerUser(Username: "Saja", email: "saja@gmail.com");
  print("=========================================================");
  printItems(items: ["apple", "banana", "grapes"], title: "Fruits");
}

void greet({required String name, String greeting = "Hello"}) {
  print(greeting + " " + name);
}

// Task 2
void registerUser({required String Username, required String email}) {
  if (email.contains("@")) {
    print("User [$Username] registered with email [$email]");
  } else {
    print("Invalid email address for user [$Username]");
  }
}

// Task 4
void printItems({required List<String> items, String title = "item list"}) {
  print(title);
  for (int i = 0; i < items.length; i++) {
    print('${i + 1} ${items[i]}');
  }
}


