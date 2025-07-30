class MyList {
  List<int> list;

  MyList(this.list);

  factory MyList.change(List<int> list) {
    List<int> positive = list.where((a) => a > 0).toList();
    int mn = positive[0] * positive[1];

    for (int i = 0; i < list.length; i++) {
      if (list[i].isEven) {
        list[i] = mn;
      }
    }

    return MyList(list);
  }

  int countAboveAverage() {
    return list.where((e) => e > avgInList()).length;
  }

  int avgInList() {
    return list.reduce((a, b) => a + b) ~/ list.length;
  }

  int? maxSumOfAdjacentNumbers() {
    if (list.length < 2) {
      return null;
    }

    int maxSum = list[0] + list[1];

    for (int i = 1; i < list.length - 2; i++) {
      int sum = list[i] + list[i + 1];

      if (sum > maxSum) {
        maxSum = sum;
      }
    }

    return maxSum;
  }

  int countValuesLessLeft() {
    int count = 0;

    for (int i = 1; i < list.length; i++) {
      if (list[i] < list[i - 1]) {
        count++;
      }
    }

    return count;
  }
}
