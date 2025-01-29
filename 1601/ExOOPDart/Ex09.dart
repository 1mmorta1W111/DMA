// 9. Наследование: Животные и их движения
// Создайте класс Animal с методом move(). Реализуйте классы Fish, Bird и Dog, которые наследуют Animal и переопределяют метод move() (рыба плавает, птица летает, собака бегает).

class Animal {
  void move() {}
}

class Fish extends Animal {
  @override
  void move() {
    print("Рыба плавает.");
  }
}

class Bird extends Animal {
  @override
  void move() {
    print("Птица летает.");
  }
}

class Dog extends Animal {
  @override
  void move() {
    print("Собака бегает.");
  }
}