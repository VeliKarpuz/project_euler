

void main() {
  List<int> digits = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  int permutationIndex = 1000000 - 1; 
  List<int> resultPermutation = [];
  List<int> factorials = List<int>.filled(digits.length, 0);
  for (int i = 0; i < digits.length; i++) {
    factorials[i] = factorial(i);
  }

  for (int i = digits.length - 1; i >= 0; i--) {
    int factValue = factorials[i];
    int digitIndex = permutationIndex ~/ factValue;
    resultPermutation.add(digits[digitIndex]);
    digits.removeAt(digitIndex);
    permutationIndex %= factValue;
  }

  print(resultPermutation.join()); 
}


int factorial(int n) {
  int res = 1;
  for (int i = 2; i <= n; i++) {
    res *= i;
  }
  return res;
}