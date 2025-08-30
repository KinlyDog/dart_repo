abstract class Product {
  String name;
  int price;

  Product(this.name, this.price);
}

class Phone extends Product {
  Phone(super.name, super.price);
}

class TV extends Product {
  TV(super.name, super.price);
}

class PC extends Product {
  PC(super.name, super.price);
}

class Order {
  List<Product> products;

  Order(this.products);

  int getTotalCost() {
    return products.fold(0, (sum, product) => sum + product.price);
  }

  int getProductTypeCost(Type type) {
    return products
        .where((p) => p.runtimeType == type)
        .fold(0, (sum, p) => sum + p.price);
  }

  double getTotalDiscountedCost(double discount) {
    return getTotalCost() * (100 - discount) / 100;
  }

  double getProductTypeDiscountedCost(Type type, double discount) {
    return getProductTypeCost(type) * (100 - discount) / 100;
  }
}
