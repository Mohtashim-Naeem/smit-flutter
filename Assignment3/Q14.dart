// Q.14: Write a Dart function named sortList that takes in a list of integers
// and returns a new list with the elements sorted in ascending order.
// The original list should remain unchanged.
void main() {
  List<int> num = [5, 2, 3, 1, 4];
  List<int> sorted_num = List.from(num);
  sorted_num.sort();
  print("the orignal remain same: $num");
  print("the newly sorted List: $sorted_num");
}
