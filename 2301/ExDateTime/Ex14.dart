// 14. Конвертация даты в строку с учетом локали
// Задача: Создайте метод, который принимает объект LocalDate
// и выводит его в строковом формате с учетом локали, например, ru или en.

import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting('ru');
  initializeDateFormatting('en');

  DateTime now = DateTime.now();

  print(formatDate(now, 'ru'));
  print(formatDate(now, 'en'));
}

String formatDate(DateTime date, String locale) {
  var formatter = DateFormat.yMMMMd(locale);
  return formatter.format(date);
}