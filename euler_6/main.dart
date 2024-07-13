void main() {
  print(differenceOfSums(100));
}

int sumOfSquare(int n) {
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += i;
  }
  return sum * sum;
}

int squareOfSum(int n) {
  int sum = 0;
  for (var i = 1; i <= n; i++) {
    sum += (i * i);
  }
  return sum;
}

int differenceOfSums(int num) {
  return sumOfSquare(num) - squareOfSum(num);
}
