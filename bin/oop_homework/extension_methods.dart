extension ListDoubler on List<int> {
  List<int> doubleList() {
    return map((a) => a * 2).toList();
  }
}

extension StringReverser on String {
  String reverseString() {
    return split('').reversed.join('');
  }
}

