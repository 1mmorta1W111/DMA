// 3. Сколько дней до Нового года?
// Задача: Создайте метод, который определяет количество дней до Нового года от текущей даты.

import 'package:intl/intl.dart';

int daysUntilNewYear() {
  DateTime today = DateTime.now();
  DateTime newYear = DateTime(today.year + 1, 1, 1);

  Duration difference = newYear.difference(today);
  return difference.inDays;
}

void main() {
  int daysLeft = daysUntilNewYear();
  print("До Нового года осталось $daysLeft дней.");
}
