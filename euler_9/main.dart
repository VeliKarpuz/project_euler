import 'dart:math';

void main() {
  getPyt();
}

void getPyt() {
  double c = 0;
  for (int i = 1; i < 1000; i++) {
    for (int j = 1; j < 1000; j++) {
      c = sqrt(i * i + j * j);
      if (i + j + c == 1000) {
        print("$i $j $c");
        break;
      }
    }
  }
}
