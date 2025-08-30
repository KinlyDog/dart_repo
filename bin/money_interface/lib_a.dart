interface class IMoney {
  int get value => 0;

  IMoney operator +(IMoney other) => IMoney();

  IMoney operator -(IMoney other) => IMoney();

  @override
  String toString() {
    var money = (value / 100).toStringAsFixed(2);
    return 'Money($money)';
  }
}
