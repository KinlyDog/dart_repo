class Vector {
  double x;
  double y;
  double z;

  Vector(this.x, this.y, this.z);

  Vector operator +(Vector other) {
    return Vector(x + other.x, y + other.y, z + other.z);
  }

  Vector operator -(Vector other) {
    return Vector(x - other.x, y - other.y, z - other.z);
  }

  Vector operator *(double scalar) {
    return Vector(x * scalar, y * scalar, z * scalar);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is! Vector || other.runtimeType != runtimeType) {
      return false;
    }

    final Vector typedOther = other;
    return x == other.x && y == other.y && z == other.z;
  }

  double operator [](int index) {
    if (index < 0 || index > 2) {
      throw RangeError.range(index, 0, 2);
    }

    switch (index) {
      case 0:
        return x;
      case 1:
        return y;
      default:
        return z;
    }
  }

  @override
  int get hashCode {
    return Object.hashAll([x, y, z]);
  }
}

void main() {
  var vector = Vector(2, 3, 5);
  print(vector[-1]);
}
