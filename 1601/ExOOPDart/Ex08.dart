// 8. Площадь фигур
// Создайте абстрактный класс Shape с абстрактным методом getArea().
// Реализуйте классы Circle и Rectangle, которые наследуют от Shape и вычисляют площадь круга и прямоугольника соответственно.

abstract class Shape {
  double getArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double getArea() {
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double getArea() {
    return width * height;
  }
}