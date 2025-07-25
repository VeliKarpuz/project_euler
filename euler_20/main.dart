void main(){
 print(sumOfDigits(getFactorial(100)));
}

BigInt getFactorial (int a){
  if (a< 0) {
    throw "Hata, negatif sayı girildi.";
  } else {
    if (a==0 || a==1) {
      return BigInt.one;
    } else {
      BigInt fact =BigInt.one;
      while (a>1) {
        fact = fact * BigInt.from(a);
        a--;
      }
      return fact;
    }
  }
}

int sumOfDigits (BigInt a){
  String number = a.toString();
  int sum =0;
  for (var i = 0; i < number.length; i++) {
    sum = sum + int.parse(number[i]);
  }
  return sum;
}

