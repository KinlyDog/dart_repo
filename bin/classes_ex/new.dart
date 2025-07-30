import 'dart:io';
import 'dart:math';

// объявите функцию и напишите ее реализацию
int multiply(List<int> list) {
  return list.reduce((a, b) => a * b);
}

int add(List<int> list1, List<int> list2) {
  return [...list1, ...list2].reduce((a, b) => a + b);
}

int? findIndex(List<int> list, int val) {
  if (!list.contains(val)) {
    return null;
  }

  return list.indexOf(val);
}

String reverseString(String str) {
  return str.split('').reversed.join();
}

bool isPalindrome(String str) {
  var list = str.split('');

  for (int i = 0; i < str.length / 2; i++) {
    if (list[i] != list[str.length - i - 1]) {
      return false;
    }
  }

  return true;
}

List<int> generateList(int a, int b, int c) {
  var list = <int>[];

  for (int i = a; i < b + 1; i += c) {
    list.add(i);
  }

  return list;
}

int pow3(int i) {
  return i * i * i;
}

bool isAnagram(String str1, String str2) {
  var str1_ = (str1.split('')..sort()).join('');
  var str2_ = (str2.split('')..sort()).join('');

  return str1_.toString() == str2_.toString();
}

int sumValues(int n) {
  return List.generate(n, (i) => i).reduce((a, b) => a + b);
}

double celsiusToFahrenheit(double t) {
  return t * (9 / 5) + 32;
}

double fahrenheitToCelsius(double t) {
  return (t - 32) * (5 / 9);
}

int countUpperCaseLetters(String str) {
  return str.codeUnits.where((a) => 64 < a && a < 91).length;
}


void main() {
  print(countUpperCaseLetters("Hello World"));
}
