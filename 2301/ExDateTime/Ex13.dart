// 13. Вычисление количества рабочих часов
// Задача: Напишите метод, который принимает два объекта LocalDateTime,
// представляющие начало и конец рабочего дня, и возвращает количество рабочих часов (без учета выходных).

import 'package:intl/intl.dart';

Duration calculateWorkHours(DateTime start, DateTime end) {
  if (start.isAfter(end)) {
    throw ArgumentError('Start time must be before end time');
  }

  int workHours = 0;
  DateTime current = start;

  while (current.isBefore(end)) {
    if (current.weekday >= DateTime.monday && current.weekday <= DateTime.friday) {
      DateTime nextHour = current.add(Duration(hours: 1));
      if (nextHour.isAfter(end)) {
        workHours += end.difference(current).inHours;
      } else {
        workHours++;
      }
    }
    current = current.add(Duration(hours: 1));
  }

  return Duration(hours: workHours);
}

void main() {
  DateTime start = DateTime(2024, 1, 29, 9, 0);
  DateTime end = DateTime(2024, 1, 30, 17, 0);

  Duration workHours = calculateWorkHours(start, end);
  print('Рабочих часов: ${workHours.inHours}');
}