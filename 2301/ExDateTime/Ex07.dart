// 7. Форматирование и парсинг даты
// Задача: Напишите программу, которая принимает строку даты в формате dd-MM-yyyy,
// конвертирует ее в объект LocalDate, добавляет к ней 10 дней и выводит результат в формате yyyy/MM/dd.

import 'package:intl/intl.dart';

void processDate(String dateStr) {
  DateFormat inputFormat = DateFormat("dd-MM-yyyy");
  DateFormat outputFormat = DateFormat("yyyy/MM/dd");

  DateTime date = inputFormat.parse(dateStr);

  DateTime newDate = date.add(Duration(days: 10));

  String formattedDate = outputFormat.format(newDate);

  print("Исходная дата: $dateStr");
  print("Новая дата: $formattedDate");
}

void main() {
  processDate("30-01-2025");
}