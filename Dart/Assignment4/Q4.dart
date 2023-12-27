void main() {
  int num =
      5; // Replace with the number for which you want to calculate the factorial
  int result = factorial(num);
  print("Factorial of $num is $result");
}

// using while loop
int factorial(int n) {
  int result = 1;
  int i = 1;
  while (i <= n) {
    result = result * i;
    i++;
  }
  return result;
}

// using for loop

// int factorial(int n) {
//   int result = 1;
//   for (int i = 1; i <= n; i++) {
//     result = result * i;
//   }
//   return result;
// }
