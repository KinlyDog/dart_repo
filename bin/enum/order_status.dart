enum OrderStatus {
  pending,
  processing,
  shipped,
  delivered,
  cancelled,
}

class Order {
  final int id;
  OrderStatus status;

  Order(this.id, this.status);

  void updateStatus(OrderStatus newStatus) {
    if (newStatus == OrderStatus.cancelled || newStatus == OrderStatus.delivered) {
      print('Error');
    } else {
      status = newStatus;
    }
  }
}
