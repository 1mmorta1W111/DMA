// 19. Наследование: Электроника
// Создайте класс Device с полем brand и методами turnOn() и turnOff().
// Реализуйте классы Smartphone и Laptop, которые наследуют от Device и добавляют уникальные методы, например, takePhoto() для смартфона.

class Device {
  String brand;

  Device(this.brand);

  void turnOn() {
    print("$brand включен");
  }

  void turnOff() {
    print("$brand выключен");
  }
}

class Smartphone extends Device {
  Smartphone(String brand) : super(brand);

  void takePhoto() {
    print("$brand делает фото");
  }
}

class Laptop extends Device {
  Laptop(String brand) : super(brand);

  void browseInternet() {
    print("$brand подключен к интернету");
  }
}