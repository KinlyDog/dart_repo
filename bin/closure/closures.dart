import 'dart:math' as math;

Function counter(int i) {
  return () => ++i;
}

Function square(int n) {
  return () => n = n * n;
}

Function charAtIndex(String str) {
  return (int i) => i < 0 || i >= str.length ? '' : str[i];
}

Function mySum(int a) {
  return (int b) => a + b;
}

Function compareValues(String symbol) {
  return (int a, int b) => switch (symbol) {
    '>' => a > b,
    '<' => a < b,
    '=' => a == b,
    _ => false,
  };
}

Function removeChar(String str) {
  return (String char) => str.replaceAll(char, '');
}

Function countChar(String str) {
  return (String char) => str.split('').where((e) => e == char).length;
}

Function checkBit(int bitNumber) {
  return (int number) => ((number >> bitNumber) & 1) == 1;
}

Function powerList(List<int> numbers) {
  return (int exp) => numbers.map((e) => math.pow(e, exp)).toList();
}

Function removeIt(List<int> numbers) {
  return (int n) => numbers.where((e) => e % n != 0).toList();
}
