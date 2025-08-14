void main() {
  Set<BigInt> distinctTerms = {};

  for (int a = 2; a <= 100; a++) {
    for (int b = 2; b <= 100; b++) {
      BigInt result = BigInt.from(a).pow(b);

      distinctTerms.add(result);
    }
  }
  print(distinctTerms.length);
}
