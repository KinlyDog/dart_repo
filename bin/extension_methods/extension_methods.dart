extension MyList on List<int> {

  List<int> doubleList() {
    return map((e) => e * 2).toList();
  }

  int mulElem() {
    return reduce((value, element) => value * element);
  }

  int sumOfSquares() {
    return reduce((value, element) => value + element * element);
  }

  List<int> evenElements() {
    return where((i) => i.isEven).toList();
  }

  int minMaxDifference() {
    if (isEmpty) {
      return 0;
    }

    int min = reduce((a, b) => a < b ? a : b);
    int max = reduce((a, b) => a > b ? a : b);

    return max - min;
  }
}

extension MyString on String {
  String reverseWords() {
    return split(' ').map((word) => word.split('').reversed.join()).join(' ');
  }

  String reverseString() {
    return split('').reversed.join('');
  }
}

extension MyMap on Map<int, int> {
  int keysProduct() {
    return isEmpty ? 1 : keys.reduce((a, b) => a * b);
  }
}

extension MyInt on int {
  bool isPrime() {
    for (int i = 2; i < this; i++) {
      if (this % i == 0) {
        return false;
      }
    }

    return true;
  }
}