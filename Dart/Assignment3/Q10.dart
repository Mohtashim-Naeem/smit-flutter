// Q.10: Write a Dart code that takes in a list of strings
//and removes any duplicate elements,
//returning a new list without duplicates.
//The order of elements in the new list should be the same as in
//the original list.

void main() {
  List<int> nums = [10, 5, 8, 2, 15, 3, 2, 15, 3, 2, 15, 3];
  List filtered_nums = nums.toSet().toList();
  print("before list: $nums");
  print("After List: $filtered_nums");
}
