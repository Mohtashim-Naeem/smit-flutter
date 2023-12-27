import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  while (state) {
    print('''

      WELCOME DEAR! CHECK YOUR NUMBER'S PRIMALITY!
     ______________________________________________  
      Enter your number here;''');
    var n = int.parse(stdin.readLineSync()!);
    if (isPrime(n)) {
      print('$n is a prime number!');
      Continue();
    } else {
      print('$n is not a prime number!');
      Continue();
    }
  }
}

isPrime(n) {
  if (n < 2) {
    return false;
  }

  for (var i = 2; i <= sqrt(n); i++) {
    if (n % i == 0) {
      return false;
    }
    ;
  }

  return true;
}

bool state = true;

Continue() {
  print('Do you want to check another number?');
  var y_n = stdin.readLineSync();
  if (y_n == 'no') {
    state = false;
  } else {
    state = true;
  }
}
