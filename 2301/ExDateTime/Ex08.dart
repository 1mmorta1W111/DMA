// 8. Конвертация между часовыми поясами
// Задача: Напишите метод, который принимает дату и время в часовом поясе UTC
// и конвертирует его в другой часовой пояс, например, Europe/Moscow.

import 'package:intl/intl.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/standalone.dart' as tz;

void convertToMoscowTime(DateTime utcTime) {
  tz.initializeTimeZones();
  tz.Location moscow = tz.getLocation('Europe/Moscow');

  tz.TZDateTime moscowTime = tz.TZDateTime.from(utcTime, moscow);

  DateFormat format = DateFormat('yyyy-MM-dd HH:mm:ss');
  print("UTC: ${format.format(utcTime)}");
  print("Moscow Time: ${format.format(moscowTime)}");
}

void main() {
  DateTime utcNow = DateTime.now().toUtc();
  convertToMoscowTime(utcNow);
}