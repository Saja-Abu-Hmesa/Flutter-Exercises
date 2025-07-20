void main(List<String> arguments) {
  // Question 1
  var num1 = 10;
  var num2 = 9;
  // Check at least one is Even
  print(
    (num1 % 2 == 0 || num2 % 2 == 0) ? "At least one is even" : "None are even",
  );
  // Check both are positive
  print(
    (num1 > 0 && num2 > 0)
        ? "Both are positive"
        : "At least one is not positive",
  );

  // Increment the first number
  print("Increment ${++num1}");
  // Decrement the second number
  print("Decrement ${--num1}");

  // Cast result to int
  var result = (num1 / num2);
  int casted = result.toInt();
  print("Result = $result , result after casting = ${casted}");

  // Bitwise not
  print("Bitwize not of casted = ${~casted}");

  print(
    (++num1 > --num2)
        ? "incremented first number is greater than the decremented second"
        : "incremented first number is smaller than the decremented second",
  );

  // Question2
  var num3 = 12.7;
  //Prints the ceiling, floor, and rounded values.
  print("Ceiling of $num3 = ${num3.ceil()}");
  print("Floor of $num3 = ${num3.floor()}");
  print("Rounded value of $num3 = ${num3.round()}");
  // Concatenates the number as a string with a given name (e.g., "Value: 12.7").
  print("Value: ${num3.toString()}");
  print(num3 > 10 ? "Large" : "Small");

  // Question 3
  List numbers = [2, 4, 6, 8, 10];
  numbers.toSet();
  numbers.add(12);
  //Creates a map where keys are from the set and values are the numbers multiplied by 3.
  Map<int, int> numberMap = {for (var number in numbers) number: number * 3};
  print("Map of numbers multiplied by 3: $numberMap");

  // Question 4
  var days = 500;
  // Converts days to years (1 year = 365 days), months (1 month = 30 days) and reset days.
  var years = days ~/ 365;
  var months = (days % 365) ~/ 30;
  var remainingDays = (days % 365) % 30;
  print(
    "$days days => Years: $years , Months: $months , Days:  $remainingDays ",
  );
}
