void main() {
  int max = 0;
  int maxNum = 0;
  for (int i = 1; i < 1000000; i++) {
    int count = collatz(i);
    if (count > max) {
      max = count;
      maxNum = i;
    }
  }
  print(maxNum);
}

int collatz(int num) {
  int count = 0;
  while (num != 1) {
    if (num % 2 != 0) {
      num = (num * 3) + 1;
    } else {
      num = num ~/ 2;
    }
    count++;
  }
  return count;
}
