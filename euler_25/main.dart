
void main() {
  BigInt second = BigInt.one; 
  BigInt first = BigInt.one; 

  int index = 2; 


  while (true) {
    index++; 

    BigInt temp = first + second;

    second = first;
    first = temp;

    if (first.toString().length >= 1000) {
      print(index);
      break; 
    }
  }
}