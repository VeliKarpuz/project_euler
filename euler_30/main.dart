void main(List<String> args) {
  int sum = -1;
  for (var i = 0; i < 354294; i++) {
    i==findFifthPowerSum(i)?sum+=i:null;
  }
  print(sum);
}
// n=6 için: 10^5 =100000, 6×9^5 =6×59049=354294.
// n=7 için: 10^6 =1000000, 7×9^6 =6×59049=413343. 1000000>413343 X


int getFifth (int a){
  return a*a*a*a*a;
}

int findFifthPowerSum (int j){
  int sum =0;
  String num = j.toString();
  for (var i = 0; i < num.length; i++) {
   sum+=getFifth((int.parse(num[i])));
  }
  return sum;
}
