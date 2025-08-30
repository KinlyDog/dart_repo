abstract class Product {
  final String name;
  final double weight;
  final int price;

  Product(this.name, this.weight, this.price);
}

class Potato extends Product {
  Potato(
    double weight,
    int price,
  ) : super('Potato', weight, price);
}

class Cucumber extends Product {
  Cucumber(
    double weight,
    int price,
  ) : super('Cucumber', weight, price);
}

class Tomato extends Product {
  Tomato(
    double weight,
    int price,
  ) : super('Tomato', weight, price);
}

class Watermelon extends Product {
  Watermelon(
    double weight,
    int price,
  ) : super('Watermelon', weight, price);
}

class Scale {
  final double maxWeight;
  List<Product> products = [];

  Scale(this.maxWeight);

  bool addProduct(Product product) {
    if (getTotalWeight() + product.weight < maxWeight) {
      products.add(product);
      return true;
    }

    return false;
  }

  bool removeProduct(Product product) {
    return products.remove(product);
  }

  void sortByPrice() {
    products.sort((a, b) => a.price.compareTo(b.price));
  }

  void sortByWeight() {
    products.sort((a, b) => a.weight.compareTo(b.weight));
  }

  Product? getMinPriceProduct() {
    if (products.isEmpty) {
      return null;
    }

    return products.reduce((a, b) => a.price < b.price ? a : b);
  }

  Product? getMaxWeightProduct() {
    if (products.isEmpty) {
      return null;
    }

    return products.reduce((a, b) => a.weight > b.weight ? a : b);
  }

  double getTotalWeight() {
    return products.fold(0, (weight, p) => weight + p.weight);
  }

  double getTotalWeightByType(Type productType) {
    return products
        .where((p) => p.runtimeType == productType)
        .fold(0, (weight, p) => weight + p.weight);
  }
}
