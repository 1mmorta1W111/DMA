// 2. Сравнение дат
// Задача: Напишите метод, который принимает две даты (LocalDate) и определяет,
// какая из них больше, меньше или равна другой. Верните соответствующее сообщение.

import 'package:intl/intl.dart';

void compareDates(DateTime date1, DateTime date2) {
  if (date1.isBefore(date2)) {
    print("Первая дата меньше второй.");
  } else if (date1.isAfter(date2)) {
    print("Первая дата больше второй.");
  } else {
    print("Обе даты одинаковые.");
  }
}

void main() {
  DateTime date1 = DateTime(2025, 1, 30);
  DateTime date2 = DateTime(2025, 2, 1);

  compareDates(date1, date2);
}
