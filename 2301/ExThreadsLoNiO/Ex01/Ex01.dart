// Вот несколько заданий для проверки знаний по темам Потоки ввода-вывода (I/O), паттерн Декоратор, и I/O vs NIO в Java.
//
// Задание 1: Работа с потоками ввода-вывода
// Задача: Напишите программу, которая читает текст из файла и записывает его в другой файл с изменениями:
//
// Программа должна читать содержимое исходного файла построчно.
// Преобразовать каждую строку текста в верхний регистр.
// Записать преобразованный текст в новый файл.
// Условия:
//
// Для работы с файлами использовать классы из пакета java.io: BufferedReader, BufferedWriter, FileReader, FileWriter.
// Программа должна быть устойчивой к ошибкам, например, если файл не найден.
// Использовать обработку исключений через try-with-resources.

import 'dart:io';

void main() async {
  final inputFile = File('input.txt');
  final outputFile = File('output.txt');

  if (!await inputFile.exists()) {
    print('Ошибка: файл input.txt не найден.');
    return;
  }

  try {
    final lines = await inputFile.readAsLines();
    final upperCaseLines = lines.map((line) => line.toUpperCase()).toList();
    
    await outputFile.writeAsString(upperCaseLines.join('\n'));

    print('Файл успешно обработан и сохранен в output.txt');
  } catch (e) {
    print('Ошибка при обработке файла: $e');
  }
}