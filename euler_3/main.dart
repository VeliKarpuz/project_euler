main() {
  addPrimeList(10000);
  findPrimeFactors(600851475143);
  print(number);
}

int number = 0;
List<int> primeList = [];
// bool isBiggest = false;
void checkPrime(int num) {
  bool isPrime = true;
  for (int i = 2; i < num; i++) {
    if (num % i == 0) {
      isPrime = false;
      break;
    }
  }
  if (isPrime) {
    primeList.add(num);
    // isBiggest = true;
  }
}

void addPrimeList(int num) {
  for (int i = 2; i < num; i++) {
    checkPrime(i);
    // if (isBiggest) {
    //   break;
    // }
  }
}

void findPrimeFactors(int num) {
  for (int prime in primeList) {
    if (num % prime == 0) {
      num = num ~/ prime;
    }
    if (num == 1) {
      print(prime);
      break;
    }
  }
  number = num;
}
