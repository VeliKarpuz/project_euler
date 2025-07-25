// Sayıların İngilizce karşılıklarındaki harf sayılarını tutan Map'ler
// Boşluklar ve kısa çizgiler sayılmayacak.
final Map<int, int> units = {
  1: 3, // one
  2: 3, // two
  3: 5, // three
  4: 4, // four
  5: 4, // five
  6: 3, // six
  7: 5, // seven
  8: 5, // eight
  9: 4, // nine
};

final Map<int, int> teens = {
  10: 3, // ten
  11: 6, // eleven
  12: 6, // twelve
  13: 8, // thirteen
  14: 8, // fourteen
  15: 7, // fifteen
  16: 7, // sixteen
  17: 9, // seventeen
  18: 8, // eighteen
  19: 8, // nineteen
};

final Map<int, int> tens = {
  2: 6, // twenty
  3: 6, // thirty
  4: 5, // forty
  5: 5, // fifty
  6: 5, // sixty
  7: 7, // seventy
  8: 6, // eighty
  9: 6, // ninety
};

const int HUNDRED_LENGTH = 7; // hundred
const int AND_LENGTH = 3;     // and
const int THOUSAND_LENGTH = 8; // thousand

int countLetters(int n) {
  if (n < 1 || n > 1000) {
    throw ArgumentError('Sayı 1 ile 1000 arasında olmalıdır.');
  }

  if (n == 1000) {
    // "one thousand" = 3 (one) + 8 (thousand) = 11
    return units[1]! + THOUSAND_LENGTH;
  }

  int letters = 0;

  // Yüzlükler basamağı
  if (n >= 100) {
    // Örnek: 342 -> three hundred and forty-two
    // 3 (units[3]) + hundred (HUNDRED_LENGTH)
    letters += units[n ~/ 100]! + HUNDRED_LENGTH;
    n %= 100; // Kalan: 42
    if (n > 0) {
      letters += AND_LENGTH; // "and" kelimesinin harf sayısı
    }
  }

  // Onluklar ve birler basamağı
  if (n > 0) {
    if (n < 20) {
      // 1-19 arası sayılar
      letters += units[n] ?? teens[n]!;
    } else {
      // 20-99 arası sayılar
      // Örneğin 42 -> forty-two
      letters += tens[n ~/ 10]!; // forty
      if (n % 10 > 0) {
        letters += units[n % 10]!; // two
      }
    }
  }

  return letters;
}

void main() {
  int totalLetters = 0;
  for (int i = 1; i <= 1000; i++) {
    totalLetters += countLetters(i);
  }
  print('1\'den 1000\'e kadar olan sayıları yazarken kullanılan toplam harf sayısı: $totalLetters');
}