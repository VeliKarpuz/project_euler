void main() {
  sonucuBul();
}

List<int> numList = [
  2,
  3,
  4,
  5,
  6,
  7,
  8,
  9,
  10,
  11,
  12,
  13,
  14,
  15,
  16,
  17,
  18,
  19,
  20,
];

List<int> primeNumbers = [2, 3, 5, 7, 11, 13, 17, 19];

List<int> primeFactors = [];

void getPrimeFactors(int num) {
  for (int prime in primeNumbers) {
    if (num % prime == 0) {
      primeFactors.add(prime);
    }
  }
}

void sonucuBul() {
  int num = 1;
  for (int num in numList) {
    getPrimeFactors(num);
  }
  print(primeFactors);
  for (int prime in primeFactors) {
    num *= prime;
  }
  print(num);
}
