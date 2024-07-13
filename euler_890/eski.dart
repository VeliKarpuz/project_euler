// Verilen sayıyı kaç farklı şekilde 2'nin kuvvetleri toplamı olarak yazılabileceğini hesaplayan fonksiyon
import 'dart:math';

int countWays(int n) {
  // Dinamik programlama tablosu
  List<int> dp = List.filled(n + 1, 0);
  dp[0] = 1; // 0'ı oluşturmanın bir yolu var: hiçbir şey eklememek

  // İkinin kuvvetleri ile tabloyu güncelle
  int power = 1;
  while (power <= n) {
    for (int i = power; i <= n; i++) {
      dp[i] += dp[i - power];
    }
    power *= 2;
  }

  return dp[n];
}

void main() {
  // Örnek kullanım
  List<int> deneme = List.filled(6, 0);
  deneme[0] = 2;
  print(deneme);

  int sayi = pow(3, 2).toInt(); // Daha kçk bir rnekle test edelim

  int toplamYollar = countWays(sayi);
  int mod = pow(10, 9).toInt() + 7;

  print('Toplam yolların sayısı: ${toplamYollar % mod}');
}
