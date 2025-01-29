// 2. Наследование: Класс "Работник" и "Менеджер"
// Создайте класс Worker, который наследуется от класса Person, и добавьте поле salary.
// Создайте класс Manager, который наследует от Worker и добавляет поле для подчиненных сотрудников.

import 'Ex01.dart';

class Worker extends Person {
  double salary;

  Worker(String name, int age, String gender, this.salary) : super(name, age, gender);

  void displaySalary() {
    print("Зарплата: $salary");
  }
}

class Manager extends Worker {
  List<String> subordinates;

  Manager(String name, int age, String gender, double salary, this.subordinates)
      : super(name, age, gender, salary);

  void displaySubordinates() {
    print("Подчиненные: ${subordinates.join(", ")}");
  }
}