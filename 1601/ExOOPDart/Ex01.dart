// 1. Класс "Человек"
// Создайте класс Person с полями name, age, gender.
// Реализуйте методы для вывода информации о человеке и увеличения его возраста.
// Добавьте метод для изменения имени.

class Person {
  String name;
  int age;
  String gender;

  Person(this.name, this.age, this.gender);

  void displayInfo() {
    print("Имя: $name, Возраст: $age, Пол: $gender");
  }

  void incrementAge() {
    age++;
  }

  void changeName(String newName) {
    name = newName;
  }
}