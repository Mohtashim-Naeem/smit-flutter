// Q.9: Given a list of integers, write a dart code that returns
//the maximum value from the list.
int findMaxNum(List<int> numbers) {
  if (numbers.isEmpty) {
    throw Exception("The list is empty.");
  }
  int max = 0;
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > numbers[max]) {
      max = i;
    }
  }
  return numbers[max];
}

void main() {
  List<int> nums = [10, 5, 8, 2, 15, 3];
  int maxNum;

  maxNum = findMaxNum(nums);
  print("The maximum value is: $maxNum");
  // maxNum =
  //     numbers.reduce((value, element) => value > element ? value : element);
}
