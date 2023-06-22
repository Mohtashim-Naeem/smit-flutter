// Q.6: Remove all false values from Q4 list by using removeWhere or retainWhere property.
void main() {
  List<bool> result = [false, true, false, true, false];
  result.removeWhere((element) => element == false);
  print(result);
}
