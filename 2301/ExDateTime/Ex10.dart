// 10. Создание календаря на месяц
// Задача: Напишите метод, который принимает месяц и год
// и выводит все даты месяца с указанием, является ли каждая из них рабочим днем или выходным.

void printMonthlyCalendar(int year, int month) {
  int daysInMonth = DateTime(year, month + 1, 0).day;

  for (int day = 1; day <= daysInMonth; day++) {
    DateTime date = DateTime(year, month, day);
    String dayType = (date.weekday == DateTime.saturday || date.weekday == DateTime.sunday)
        ? "Выходной"
        : "Рабочий день";
    print("$day.$month.$year - $dayType");
  }
}

void main() {
  printMonthlyCalendar(2024, 2);
}