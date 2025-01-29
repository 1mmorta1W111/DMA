// 3. Полиморфизм: Животные
// Создайте интерфейс Animal с методом makeSound().
// Реализуйте классы Dog, Cat, и Cow, которые реализуют этот интерфейс.
// Продемонстрируйте полиморфизм на примере массива животных.

abstract class Animal {
  void makeSound();
}

class Dog implements Animal {
  @override
  void makeSound() {
    print("Гав");
  }
}

class Cat implements Animal {
  @override
  void makeSound() {
    print("Мяу");
  }
}

class Cow implements Animal {
  @override
  void makeSound() {
    print("Му");
  }
}

void main() {
  List<Animal> animals = [Dog(), Cat(), Cow()];

  for (var animal in animals) {
    animal.makeSound();
  }
}
