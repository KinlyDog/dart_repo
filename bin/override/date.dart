class Date {
  // Рекомендуется сделать поля неизменяемыми, добавив 'final'
  final int year;
  final int month;
  final int day;

  Date(this.year, this.month, this.day);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is! Date || other.runtimeType != runtimeType) {
      return false;
    }

    final Date typedOther = other;
    return year == typedOther.year &&
        month == typedOther.month &&
        day == typedOther.day;
  }

  bool operator <(Date other) {
    if (year != other.year) {
      return year < other.year;
    }

    if (month != other.month) {
      return month < other.month;
    }

    return day < other.day;
  }

  bool operator <=(Date other) {
    return this < other || this == other;
  }

  bool operator >(Date other) {
    if (year != other.year) {
      return year > other.year;
    }

    if (month != other.month) {
      return month > other.month;
    }

    return day > other.day;
  }

  bool operator >=(Date other) {
    return this > other || this == other;
  }

  @override
  int get hashCode {
    return Object.hashAll([year, month, day]);
  }
}
