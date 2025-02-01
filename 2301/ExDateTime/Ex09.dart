// 9. Вычисление возраста по дате рождения
// Задача: Напишите метод, который принимает дату рождения в формате LocalDate
// и возвращает текущий возраст в годах.

import 'package:intl/intl.dart';

int calculateAge(DateTime birthDate) {
  DateTime today = DateTime.now();
  int age = today.year - birthDate.year;

  if (today.month < birthDate.month ||
      (today.month == birthDate.month && today.day < birthDate.day)) {
    age--;
  }

  return age;
}

void main() {
  DateTime birthDate = DateFormat("dd-MM-yyyy").parse("02-09-2006");
  print("Возраст: ${calculateAge(birthDate)} лет");
}