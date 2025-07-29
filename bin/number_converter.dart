class NumberConverter {
  static String intToOctal(int number) {
    return number.toRadixString(8);
  }

  static int octalToInt(String octal) {
    return int.parse(octal, radix: 8);
  }

  static String intToHexadecimal(int number) {
    return number.toRadixString(16);
  }

  static int hexadecimalToInt(String hexadecimal) {
    return int.parse(hexadecimal, radix: 16);
  }

  static String octalToHexadecimal(String octal) {
    return intToHexadecimal(octalToInt(octal));
  }

  static String hexadecimalToOctal(String hexadecimal) {
    return intToOctal(hexadecimalToInt(hexadecimal));
  }
}