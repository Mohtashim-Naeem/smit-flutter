import 'dart:io';

// Q10: Write a program that takes three numbers from the user and prints the greatest number & lowest number.
void main() {
  // Get three numbers from the user.
  print("Enter three numbers:");
  String? input = stdin.readLineSync();
  String? input2 = stdin.readLineSync();
  String? input3 = stdin.readLineSync();

  int num1 = int.parse(input!);
  int num2 = int.parse(input2!);
  int num3 = int.parse(input3!);

  // Find the greatest number.
  var greatest = num1;
  if (num2 > greatest) {
    greatest = num2;
  }
  if (num3 > greatest) {
    greatest = num3;
  }

  // Find the lowest number.
  var lowest = num1;
  if (num2 < lowest) {
    lowest = num2;
  }
  if (num3 < lowest) {
    lowest = num3;
  }

  // Print the greatest and lowest numbers.
  print("The greatest number is $greatest.");
  print("The lowest number is $lowest.");
}
