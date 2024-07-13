void main() {
  checkList();
}

List<int> primeNumbers = [];

void checkPrime(int num) {
  bool isPrime = true;
  for (var i = 2; i < num; i++) {
    if (num % i == 0) {
      isPrime = false;
      break;
    }
  }
  isPrime ? primeNumbers.add(num) : null;
}

void checkList() {
  int sum = 0;
  for (var i = 2; i < 2000000; i++) {
    checkPrime(i);
  }
  for (var num in primeNumbers) {
    sum += num;
  }
  print(sum);
}
