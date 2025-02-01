// 11. Генерация случайной даты в диапазоне
// Задача: Реализуйте метод, который принимает две даты
// и генерирует случайную дату в этом диапазоне.

import 'dart:math';

DateTime getRandomDate(DateTime start, DateTime end) {
  int difference = end.difference(start).inDays;
  int randomDays = Random().nextInt(difference + 1);
  return start.add(Duration(days: randomDays));
}

void main() {
  DateTime startDate = DateTime(2023, 1, 1);
  DateTime endDate = DateTime(2023, 12, 31);

  DateTime randomDate = getRandomDate(startDate, endDate);
  print("Случайная дата: ${randomDate.toLocal()}");
}