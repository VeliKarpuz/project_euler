
void main(List<String> args) {
}

String number1 = "10";
String number2 = "223";


void sum(String num1, String num2) {
  String bigNumber;

  if (num1.length>num2.length) {
    bigNumber=num1;
  } else {
    bigNumber=num2;
  }

  int digit1;
  int digit2;
  for (var i = bigNumber.length-1; i>-1; i--) {
    digit1 = int.parse(num1[i]);
    
  }
}