import 'dart:core';

void main() {
  List<int> coins = [1, 2, 5, 10, 20, 50, 100, 200];
  const int targetAmount = 200;

  List<int> ways = List.filled(targetAmount + 1, 0);

  ways[0] = 1;

  for (int coin in coins) {
    for (int j = coin; j <= targetAmount; j++) {
      ways[j] += ways[j - coin];
    }
  }

  print(ways[targetAmount]);
}