// 14. Класс "Точка" и "Прямоугольник"
// Создайте класс Point с координатами x и y.
// Реализуйте класс Rectangle, который содержит две точки (левая верхняя и правая нижняя).
// Реализуйте метод для вычисления площади прямоугольника.

class Point {
  double x, y;

  Point(this.x, this.y);
}

class Rectangle {
  Point topLeft, bottomRight;

  Rectangle(this.topLeft, this.bottomRight);

  double getArea() {
    return (bottomRight.x - topLeft.x) * (topLeft.y - bottomRight.y);
  }
}
