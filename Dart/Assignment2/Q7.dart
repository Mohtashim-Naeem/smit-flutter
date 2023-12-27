// Q.7: Create a list of numbers & write a program that removes all even numbers
// from the list and adds 1 to each odd number left.

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  numbers.removeWhere((number) => number % 2 == 0);
  numbers = numbers.map((number) => number + 1).toList();

  print("Original Numbers: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]");
  print("Modified Numbers: $numbers");
}
