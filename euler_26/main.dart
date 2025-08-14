
void main() {
  maxRepeatingCycleFraction();
}

int getRepeatingCycleLength(int d) {
  if (d <= 1) {
    return 0; 
  }

  Map<int, int> remainders = {};
  int currentRemainder = 1; // Başlangıç kalanı (1/d olduğu için 1'den başlarız)
  int position = 0; // Mevcut bölme adımının pozisyonu

  while (true) {
    if (currentRemainder == 0) {
      return 0;
    }
    currentRemainder *= 10;
    if (remainders.containsKey(currentRemainder)) {
      return position - remainders[currentRemainder]!;
    }
    remainders[currentRemainder] = position;
    currentRemainder %= d;
    position++;
  }
}

void maxRepeatingCycleFraction() {
  int maxLength = 0; // Bulunan en uzun döngü uzunluğu
  int dWithMaxLength = 0; // En uzun döngüye sahip olan d değeri

  for (int d = 2; d < 1000; d++) {
    int currentLength = getRepeatingCycleLength(d);
    if (currentLength > maxLength) {
      maxLength = currentLength;
      dWithMaxLength = d;
    }
  }

  print('1/d kesrinde en uzun tekrar eden döngüye sahip d değeri: $dWithMaxLength');
  print('En uzun döngü uzunluğu: $maxLength');
}