import 'dart:math';

void main(List<String> args) {
  maxQuadraticFormulaNums();
}

bool isPrime(int a) {
  bool isPrime = true;
  if (a == 2) {
    return isPrime;
  } else {
    if (a < 2 || a % 2 == 0) {
      isPrime = false;
      return isPrime;
    } else {
      for (var i = 3; i <= sqrt(a); i += 2) {
        if (a % i == 0) {
          isPrime = false;
          break;
        }
      }
    }
  }
  return isPrime;
}




void maxQuadraticFormulaNums() {
  List<int> primes = [];
  for (var i = 2; i < 1001; i++) {
    isPrime(i) ? primes.add(i) : null;
  }
  int first = 0;
  int second = 0;
  int max = 0;
  int num;
  int count;
  for (var a = -999; a < 1000; a++) {
    for (int b in primes) {
      count = 0;
      for (var i = 0; i < 1001; i++) {
        num = i * i + (a * i) + b;
        if (isPrime(num)) {
          count++;
          if (count > max) {
            max = count;
            first = a;
            second = b;
          }
        } else {
          break;
        }
      }
    }
  }
  print(first * second);
}
