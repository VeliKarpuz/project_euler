void main() {
  getExactPrime(10001);
}

Set<int> primeNums = {};

int i = 2;

void checkPrime(int num) {
  bool isPrime = true;
  for (int i = 2; i < num; i++) {
    if (num % i == 0) {
      isPrime = false;
      break;
    }
  }
  isPrime ? primeNums.add(num) : null;
}

void getExactPrime(int num) {
  while (primeNums.length < num) {
    checkPrime(i);
    i++;
  }
  print(primeNums.last);
}
