// import 'dart:io';

void main(List<String> args) {
  List<int> nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List even_nums = [];
  for (var i in nums) {
    if (i % 2 == 0) {
      even_nums.add(i);
    }
  }
  print("we are evens : $even_nums");
}
