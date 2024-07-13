void main() {
  fun();
}

double setNum(int num) {
  return num * (num + 1) / 2;
}

List<int> primeNums = [];
void getPrimeNums(int num) {
  bool isPrime = true;
  for (int i = 2; i < num; i++) {
    if (num % i == 0) {
      isPrime = false;
      break;
    }
  }
  if (isPrime) {
    primeNums.add(num);
  }
}

void fun() {
  for (int i = 2; i < 100000; i++) {
    getPrimeNums(i);
  }
  for (int i = 2; i < 100000; i++) {
    double num = setNum(i);
    List<int> asalBolen = [];
    Map<int, int> asalBolenSayisi =
        {}; // Asal bölenlerin sayısını tutacak harita
    int counter = 0;
    while (num != 1) {
      if (num % primeNums[counter] == 0) {
        asalBolen.add(primeNums[counter]);
        num = num / primeNums[counter];
        // Haritayı güncelle
        if (asalBolenSayisi.containsKey(primeNums[counter])) {
          asalBolenSayisi[primeNums[counter]] =
              asalBolenSayisi[primeNums[counter]]! + 1;
        } else {
          asalBolenSayisi[primeNums[counter]] = 2;
        }
      } else {
        counter++;
      }
    }
    int sonuc = 1;
    asalBolenSayisi.forEach(
      (key, value) {
        sonuc *= value;
        if (sonuc > 500) {
          print(setNum(i));
        }
      },
    );
  }
}
