void main() {
  int sum = 0;
  for (var i = 1; i < 1002; i++) {
    if (i.isEven) {
      sum += (i * i);
    } else {
      sum += ((i * i) + 1);
    }
  }
  for (var i = 2; i < 1002; i++) {
    sum += (i * i - (i - 1));
  }
  print(sum-1);
}
