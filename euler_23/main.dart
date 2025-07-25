void main(List<String> args) {
  const int limit = 28123;

  getAbundants(limit); 

  control(); 

  int totalSumOfNonAbundantSums = 0;
  for (int i = 1; i <= limit; i++) { 
    if (!canBeSumOfTwoAbundants[i]) { 
      totalSumOfNonAbundantSums += i; 
    }
  }
  print(totalSumOfNonAbundantSums);
}


List<int> abundants = [];


int getSumProperDivisors (int num){
  int sumOfDivisiors =0;
  int firstNum = num;
while (num>1) {
  if (firstNum%(num-1)==0) {
    sumOfDivisiors+=(num-1);
  }
  num--;
}
  return sumOfDivisiors;
}

void getAbundants (int limit){ 
  for (int num = 12; num <= limit; num++) { 
    int sum = getSumProperDivisors(num);
    if (sum > num) {
      abundants.add(num); 
    }
  }
}


List<bool> canBeSumOfTwoAbundants = List.filled(28123 + 1, false);

void control (){
  // abundants listesi artık getAbundants fonksiyonunda sıralı olarak dolduruluyor.
  for (int i = 0; i < abundants.length; i++) {
    for (int j = i; j < abundants.length; j++) { // j=i yaparak tekrarlayan çiftleri engelle
      int sum = abundants[i] + abundants[j];
      if (sum <= 28123) {
        canBeSumOfTwoAbundants[sum] = true;
      } else {
        // Toplam limitin üzerine çıktığında, j döngüsünü kırmaya gerek yok,
        // çünkü abundants listesi sıralı olduğu için daha fazla toplam limitin üzerine çıkacaktır.
        break;
      }
    }
  }
}



// // Bir sayının kendisinden küçük pozitif bölenlerinin toplamını hesaplar.
// int sumOfProperDivisors(int n) {
//   if (n <= 1) return 0; // 1'in asal böleni yoktur, 0 kabul edebiliriz.
//   int sum = 1; // 1 her zaman bir bölenidir.

//   // Optimize edilmiş bölen bulma
//   // Sadece kareköküne kadar kontrol etmek yeterlidir.
//   // Eğer i bir bölen ise, n/i de bir bölendir.
//   for (int i = 2; i * i <= n; i++) {
//     if (n % i == 0) {
//       sum += i;
//       if (i * i != n) { // Eğer i'nin karesi n değilse, n/i farklı bir bölendir.
//         sum += n ~/ i; // n/i'yi de ekle
//       }
//     }
//   }
//   return sum;
// }

// // Bir sayının bol (abundant) olup olmadığını kontrol eder.
// bool isAbundant(int n) {
//   return sumOfProperDivisors(n) > n;
// }

// void main() {
//   const int limit = 28123; // Problemin üst sınırı

//   // Bol sayıları depolamak için bir liste
//   List<int> abundantNumbers = [];

//   // 1. Adım: Bol sayıları bulma
//   for (int i = 1; i <= limit; i++) {
//     if (isAbundant(i)) {
//       abundantNumbers.add(i);
//     }
//   }
//   // print('Bulunan bol sayı adedi: ${abundantNumbers.length}');

//   // İki bol sayının toplamı olarak yazılabilecek sayıları işaretlemek için
//   // Bir boolean dizi kullanmak, indeksler sayesinde hızlı erişim sağlar.
//   List<bool> canBeSumOfTwoAbundants = List.filled(limit + 1, false);

//   // 2. Adım: İki bol sayının toplamı olarak yazılabilecek sayıları işaretleme
//   for (int i = 0; i < abundantNumbers.length; i++) {
//     for (int j = i; j < abundantNumbers.length; j++) {
//       int sum = abundantNumbers[i] + abundantNumbers[j];
//       if (sum <= limit) {
//         canBeSumOfTwoAbundants[sum] = true;
//       } else {
//         // Toplam limitin üzerine çıktığında, j döngüsünü kırmaya gerek yok,
//         // ancak dış döngüdeki 'i' ile daha büyük toplamlar oluşacaktır,
//         // bu nedenle 'sum' limitin üzerine çıktığında iç döngüyü kırmak performansı artırır.
//         break; // abundantNumbers sıralı olduğu için, daha fazla toplam limitin üzerine çıkacaktır.
//       }
//     }
//   }

//   // 3. Adım: İki bol sayının toplamı olarak yazılamayan sayıların toplamını bulma
//   int totalSum = 0;
//   for (int i = 1; i <= limit; i++) {
//     if (!canBeSumOfTwoAbundants[i]) {
//       totalSum += i;
//     }
//   }

//   print('İki bol sayının toplamı olarak yazılamayan pozitif tam sayıların toplamı: $totalSum');
// }