// Q.12: Write a Dart code that takes in a list of strings and
// returns a new list with the elements in reverse order.
// The original list should remain unchanged.
void main() {
  List<String> orignal_list;
  List<String> reversed_list;
  orignal_list = ["zsad", "basit", "naeem", "hassan", "ahsan"];
  reversed_list = orignal_list.reversed.toList();
  print("the orignal list remain unchanged: $orignal_list");
  print("the list in reverse order: $reversed_list");
}
