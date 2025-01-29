// 4. Абстрактный класс "Транспорт"
// Создайте абстрактный класс Transport с абстрактным методом move().
// Реализуйте классы Car и Bike, которые наследуются от Transport и реализуют метод move().

abstract class Transport {
  void move();
}

class Car extends Transport {
  @override
  void move() {
    print("Машина едет.");
  }
}

class Bike extends Transport {
  @override
  void move() {
    print("Велосипед едет.");
  }
}
