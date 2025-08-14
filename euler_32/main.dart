import 'dart:core';

bool isPandigital(String combinedString) {
  if (combinedString.length != 9 || combinedString.contains('0')) {
    return false;
  }
  Set<String> digitSet = combinedString.split('').toSet();
  
  return digitSet.length == 9;
}

void main() {
  Set<int> pandigitalProducts = {}; 
  for (int a = 1; a < 100; a++) {
    for (int b = 100; b < 10000; b++) {
      int product = a * b;
      String combined = '$a$b$product';
      if (combined.length > 9) {
        break;
      }
      if (combined.length == 9) {
        if (isPandigital(combined)) {
          pandigitalProducts.add(product);
        }
      }
    }
  }
  int sum = pandigitalProducts.reduce((value, element) => value + element);
  print(sum);
}