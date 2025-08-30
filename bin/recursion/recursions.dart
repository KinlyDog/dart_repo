int calculateSum(int n) {
  if (n == 1) {
    return 1;
  }

  return n + calculateSum(n - 1);
}

int findMinimum(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('List cannot be empty.');
  }

  if (numbers.length == 1) {
    return numbers.first;
  }

  final minOfRest = findMinimum(numbers.sublist(1));

  return numbers.first < minOfRest ? numbers.first : minOfRest;
}

int findMaximum(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('List cannot be empty.');
  }

  if (numbers.length == 1) {
    return numbers.first;
  }

  final maxOfRest = findMaximum(numbers.sublist(1));

  return numbers.first > maxOfRest ? numbers.first : maxOfRest;
}

bool isPalindrome(String str) {
  if (str.length < 2) {
    return true;
  }

  if (str.endsWith(str[0])) {
    return false;
  }

  return isPalindrome(str.substring(1, str.length - 1));
}

int factorial(int n) {
  if (n < 2) {
    return 1;
  }

  return n * factorial(n - 1);
}

int powN(int n, int k) {
  if (k == 1) {
    return n;
  }

  return n * powN(n, k - 1);
}

String removeSymbol(String str, String char) {
  if (!str.contains(char)) {
    return str;
  }

  return removeSymbol(str.replaceFirst(char, ''), char);
}

int gcd(int a, int b) {
  if (b == 0) {
    return a;
  }

  return gcd(b, a % b);
}

String extractCharacters(String str) {
  if (str.isEmpty || !str.contains(RegExp(r'(?=.*\().*(?=.*\))'))) {
    return '';
  }

  if (str[0] == '(') {
    return str.substring(1, str.indexOf(')'));
  }

  return extractCharacters(str.substring(1));
}

bool isPowerOfTwo(int n) {
  if (n <= 0) {
    return false;
  }

  if (n == 1) {
    return true;
  }

  if (n.isOdd) {
    return false;
  }

  return isPowerOfTwo(n ~/ 2);
}

int sumOfNegatives(List<int> numbers, int i) {
  if (i == numbers.length) {
    return 0;
  }

  return (numbers[i] < 0 ? numbers[i] : 0) + sumOfNegatives(numbers, ++i);
}

//todo not completed
int fibonacci(int n) {
  if (n == 0) {
    return 0;
  }

  return 1 + 2 + fibonacci(n - 1);
}

// int reverseNumber(int number) {
//
// }

void main() {
  print(fibonacci(8));
}
