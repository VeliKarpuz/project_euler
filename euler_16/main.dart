void main() {
  int counter = 0;
  String num = "1";
  while (counter < 1000) {
    num = toplama(num);
    counter++;
  }
  int numCount = num.length;
  int result = 0;
  while (numCount > 0) {
    result = result + int.parse(num[numCount - 1]);
    numCount--;
  }
  print(result);
}

String toplama(String num) {
  String sonuc = "";
  int temp = 0;
  for (int i = num.length - 1; i >= 0; i--) {
    temp = temp + int.parse(num[i]) * 2;
    sonuc = (temp % 10).toString() + sonuc;
    temp = temp ~/ 10;
  }
  if (temp > 0) {
    sonuc = temp.toString() + sonuc;
  }
  return sonuc;
}
