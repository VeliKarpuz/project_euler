// Bir yılın artık yıl olup olmadığını kontrol eden fonksiyon
bool isLeapYear(int year) {
  if (year % 400 == 0) {
    return true; // 400'e bölünen yüzyıl yılları artık yıldır (örn: 2000)
  }
  if (year % 100 == 0) {
    return false; // 100'e bölünen ancak 400'e bölünemeyen yüzyıl yılları artık yıl değildir (örn: 1900)
  }
  if (year % 4 == 0) {
    return true; // 4'e bölünen diğer yıllar artık yıldır
  }
  return false; // Diğerleri artık yıl değildir
}

// Belirli bir ayın gün sayısını döndüren fonksiyon
int daysInMonth(int month, int year) {
  switch (month) {
    case 1: // Ocak
    case 3: // Mart
    case 5: // Mayıs
    case 7: // Temmuz
    case 8: // Ağustos
    case 10: // Ekim
    case 12: // Aralık
      return 31;
    case 4: // Nisan
    case 6: // Haziran
    case 9: // Eylül
    case 11: // Kasım
      return 30;
    case 2: // Şubat
      return isLeapYear(year) ? 29 : 28;
    default:
      throw ArgumentError('Geçersiz ay numarası: $month. 1-12 arasında olmalı.');
  }
}

void main() {
  // 0: Pazartesi, 1: Salı, ..., 6: Pazar
  int currentDayOfWeek = 0; // 1 Ocak 1900 Pazartesi (0)

  int sundayCount = 0;

  // Başlangıç yılı 1900'den itibaren döngü başlatıyoruz.
  // Çünkü 1900 yılındaki ilerleme 1901'deki ilk Pazar gününü etkileyecek.
  for (int year = 1900; year <= 2000; year++) {
    for (int month = 1; month <= 12; month++) {
      // Sadece 1901'den 2000'e kadar olan yüzyılı sayıyoruz.
      // Ayın ilk günü bir Pazar mı kontrol et.
      // currentDayOfWeek, o ayın ilk gününü temsil eder.
      if (year >= 1901 && currentDayOfWeek == 6) { // 6 Pazar'ı temsil eder
        sundayCount++;
      }

      // Bir sonraki ayın ilk gününün haftanın hangi günü olacağını hesapla
      currentDayOfWeek = (currentDayOfWeek + daysInMonth(month, year)) % 7;
    }
  }

  print('Yirminci yüzyıl boyunca ayın ilk gününe denk gelen Pazar günleri sayısı: $sundayCount');
}