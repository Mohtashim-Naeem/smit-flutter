// Q.13: Implement a code that takes in a list of integers and
// returns a new list containing only the unique elements from
// the original list. The order of elements in the new list should be
// the same as in the original list.
void main() {
  List<int> num = [2, 4, 5, 9, 12, 2, 43, 4, 19, 89, 5, 23, 9, 43];
  List<int> uniqe_num = num.toSet().toList();
  print("the original list: $num");
  print("the list contains only Unique elements: $uniqe_num");
}
