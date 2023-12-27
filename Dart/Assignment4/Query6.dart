void main(List<String> args) {
  List<int> nums = [3, 9, 1, 6, 4, 2, 8, 5, 7, 1];
  int largest_num = nums[0];
  for (int i in nums) {
    if (i > largest_num) {
      largest_num = i;
    }
  }
  print("Largest element: $largest_num");
}
