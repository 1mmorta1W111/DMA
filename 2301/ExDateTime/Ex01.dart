// 1. Основы LocalDate и LocalTime
// Задача: Напишите программу, которая:
// Создает объект LocalDate, представляющий текущую дату.
// Создает объект LocalTime, представляющий текущее время.
// Выводит их значения в формате dd-MM-yyyy HH:mm:ss

import 'package:intl/intl.dart';

void main() {
  DateTime now = DateTime.now();

  String formattedDate = DateFormat('dd-MM-yyyy').format(now);
  String formattedTime = DateFormat('HH:mm:ss').format(now);

  print('$formattedDate $formattedTime');
}