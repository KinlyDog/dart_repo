class Rectangle {
  int width;
  int height;

  Rectangle({
    required this.width,
    required this.height,
  });

  factory Rectangle.doubling(width, height) {
    return Rectangle(width: width * 2, height: height * 2);
  }

  get area {
    return width * height;
  }

  get perimeter {
    return (width + height) * 2;
  }
}

void main() {
  var rec = Rectangle.doubling(5, 5);
  print(rec.area);
  print(rec.perimeter);
}
