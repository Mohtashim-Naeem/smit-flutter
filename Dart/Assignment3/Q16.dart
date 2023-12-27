// Q.16: Implement a Dart function named getEvenNumbers
//that uses the where() method to filter out odd numbers
// from a list of integers. The function should take in
//the original list as a parameter and return a new list
// containing only the even numbers.

void main() {
  List<int> nums = [1, 3, 4, 5, 12, 32, 13, 45, 24];
  List<int> even = List.from(nums); // making a copy so orignal remain same
  even.retainWhere((element) => element % 2 == 0);
  print("Before: $nums");
  print("only even numbers: $even");
}
