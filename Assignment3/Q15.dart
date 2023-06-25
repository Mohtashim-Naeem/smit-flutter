// Q.15: Implement a Dart function named getPositiveNumbers
// that uses the where() method to filter out negative numbers
// from a list of integers. The function should take in the original list
// as a parameter and return a new list containing only the positive numbers.

void main() {
  List<int> nums = [2, 4, -3, 9, -2, -6, 4, -1];
  nums.removeWhere((element) => element.isNegative);
  print(nums);
}
