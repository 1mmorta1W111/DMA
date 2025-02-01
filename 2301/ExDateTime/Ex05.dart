// 5. Подсчет выходных за месяц
// Задача: Напишите метод, который принимает месяц и год и возвращает количество выходных (суббот и воскресений) в этом месяце.

int countWeekends(int year, int month) {
  int weekends = 0;
  int daysInMonth = DateTime(year, month + 1, 0).day; // Определяем количество дней в месяце

  for (int day = 1; day <= daysInMonth; day++) {
    DateTime date = DateTime(year, month, day);
    if (date.weekday == DateTime.saturday || date.weekday == DateTime.sunday) {
      weekends++;
    }
  }

  return weekends;
}

void main() {
  int year = 2024;
  int month = 2;
  int weekendCount = countWeekends(year, month);

  print("В $month/$year году $weekendCount выходных (суббот и воскресений).");
}