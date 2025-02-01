// 15. Определение дня недели по дате
// Задача: Напишите метод, который принимает дату
// и возвращает название дня недели на русском языке.

import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

void main(){
  initializeDateFormatting('ru');

  DateTime date = DateTime(2025, 2, 1);
  print(getWeekdayName(date));
}

String getWeekdayName(DateTime date) {
  var formatter = DateFormat.EEEE('ru');
  return formatter.format(date);
}
