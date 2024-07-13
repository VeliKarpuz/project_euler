void main() {
  print(get_sum(10));
}

int counter = 0;
List<int> list = [];
int get_sum(n) {
  counter++;
  print(counter);
  int sum = 0;
  if (n == 1 || n == 0) {
    return 1;
  } else {
    for (int i = 0; i < n ~/ 2; i++) {
      // print(i);
      // print(n);
      list.add(get_sum(i));
      sum += get_sum(i);
    }
  }
  // print(list);
  print(counter);
  return sum;
}
