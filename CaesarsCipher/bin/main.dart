import 'dart:io';
import '../lib/file_utils.dart';

void main() {
  print('Выберите режим работы:');
  print('1 - Шифровка');
  print('2 - Расшифровка с ключом');
  print('3 - Расшифровка методом brute force');
  print('4 - Выход');

  String? choice = stdin.readLineSync();

  switch (choice) {
    case '1':
      print('Введите путь к файлу для шифрования:');
      String inputFile = stdin.readLineSync()!;
      print('Введите путь для записи зашифрованного файла:');
      String outputFile = stdin.readLineSync()!;
      print('Введите ключ (сдвиг):');
      int shift = int.parse(stdin.readLineSync()!);
      encryptFile(inputFile, outputFile, shift);
      break;
    case '2':
      print('Введите путь к файлу для расшифровки:');
      String inputFile = stdin.readLineSync()!;
      print('Введите путь для записи расшифрованного файла:');
      String outputFile = stdin.readLineSync()!;
      print('Введите ключ (сдвиг):');
      int shift = int.parse(stdin.readLineSync()!);
      decryptFile(inputFile, outputFile, shift);
      break;
    case '3':
      print('Введите путь к зашифрованному файлу для brute force:');
      String inputFile = stdin.readLineSync()!;
      print('Введите путь для записи результата:');
      String outputFile = stdin.readLineSync()!;
      bruteForceDecrypt(inputFile, outputFile);
      break;
    case '4':
      print('Выход');
      break;
    default:
      print('Неверный выбор');
      break;
  }
}
