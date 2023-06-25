// Q.17: Given a list of integers, write a Dart function named squareValues
// that uses the map() method to create a new list with each value squared.
// The function should take in the original list as a parameter and return
// the new list.
void main() {
  List<int> nums = [2, 4, 12, 32, 49, 93, 23, 53, 12];
  List<dynamic> sq_nums = nums.map((e) => e * e).toList();
  print(nums);
  print(sq_nums);
}
