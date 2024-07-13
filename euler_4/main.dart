void main() {
  getnumber();
  print(polindromes.reduce((a, b) => a > b ? a : b));
}

bool isPol = false;
List<int> polindromes = [];
void palindrome(int num) {
  bool palindrome = true;
  double yari = num.toString().length / 2;

  for (int i = 0; i < yari; i++) {
    if (num.toString()[i] != num.toString()[num.toString().length - i - 1]) {
      palindrome = false;
      break;
    }
  }
  isPol = palindrome;
  palindrome ? polindromes.add(num) : null;
}

void getnumber() {
  for (int i = 999; i > 100; i--) {
    for (int j = 999; j > 100; j--) {
      int num = i * j;
      palindrome(num);
      if (isPol) {
        break;
      }
    }
  }
}
