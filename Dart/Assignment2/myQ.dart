// Create a list of numbers & write
//a program that  replaces  all even numbers from the list with 1

void main() {
  // // replace all even with 1
  List<int> numbers = [1, 9, 1, 3, 0];
  // // replace all even with 1
  // // numbers = numbers.map((e) => e % 2 == 0 ? e = 1 : e).toList();

  // // replace all odd with 1
  // numbers = numbers.map((e) => e.isOdd ? 1 : e).toList();

  print(numbers);
  numbers.insertAll(4, [1, 2, 3, 4]);
  print(numbers);
}
