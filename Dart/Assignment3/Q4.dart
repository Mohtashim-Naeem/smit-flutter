// Q.4: Create a list of numbers & write a program to get
// the smallest & greatest number from a list.
void main() {
  List<int> numbers = [10, 5, 8, 2, 15, 3];

  int smallest = numbers.reduce(
      (currentMin, number) => currentMin < number ? currentMin : number);
  int greatest = numbers.reduce(
      (currentMax, number) => currentMax > number ? currentMax : number);

  print("Numbers: $numbers");
  print("Smallest Number: $smallest");
  print("Greatest Number: $greatest");
}
