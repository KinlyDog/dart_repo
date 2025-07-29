class Calc {
  static int add(int a, int b) {
    return a + b;
  }

  static int sub(int a, int b) {
    return a - b;
  }

  static int? mod(int a, int b) {
    return b == 0 ? null : a % b;
  }

  static int? div(int a, int b) {
    return b == 0 ? null : (a / b).toInt();
  }
}

void main() {
  print(Calc.mod(5, -7));
}
