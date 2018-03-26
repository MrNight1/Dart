import 'dart:math';

abstract class Shape {
  //Option 2: Factory constructor
  factory Shape(String type) {
    if (type == 'circle') return new Circle(2);
    if (type == 'square') return new Square(2);
    throw 'Can\'t create $type.';
  }
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => PI * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

main() {
  var circle = new Shape('circle');
  var square = new Shape('square');

  print(circle.area);
  print(square.area);
}
