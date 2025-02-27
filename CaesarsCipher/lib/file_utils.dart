import 'dart:io';
import 'caesars_cipher.dart';  // Импортируем класс CaesarCipher

// Функция для шифрования файла
void encryptFile(String inputFile, String outputFile, int shift) {
  try {
    // Чтение текста из файла
    String text = readFile(inputFile);
    // Создание объекта CaesarCipher
    CaesarCipher cipher = CaesarCipher();
    // Шифрование текста
    String encryptedText = cipher.encrypt(text, shift);
    // Запись зашифрованного текста в новый файл
    writeFile(outputFile, encryptedText);
  } catch (e) {
    print('Ошибка при шифровании файла: $e');
  }
}

// Функция для расшифровки файла с известным сдвигом
void decryptFile(String inputFile, String outputFile, int shift) {
  try {
    // Чтение текста из файла
    String text = readFile(inputFile);
    // Создание объекта CaesarCipher
    CaesarCipher cipher = CaesarCipher();
    // Расшифровка текста
    String decryptedText = cipher.decrypt(text, shift);
    // Запись расшифрованного текста в новый файл
    writeFile(outputFile, decryptedText);
  } catch (e) {
    print('Ошибка при расшифровке файла: $e');
  }
}

// Функция для расшифровки методом brute force
void bruteForceDecrypt(String inputFile, String outputFile) {
  try {
    // Чтение текста из файла
    String text = readFile(inputFile);
    // Создание объекта CaesarCipher
    CaesarCipher cipher = CaesarCipher();

    String result = '';
    // Перебор всех возможных сдвигов (от 0 до 25)
    for (int shift = 0; shift < CaesarCipher.alphabet.length; shift++) {
      String decryptedText = cipher.decrypt(text, shift);
      result += 'Сдвиг $shift: \n$decryptedText\n\n'; // Добавляем расшифрованный текст для каждого сдвига
    }

    // Запись результата в файл
    writeFile(outputFile, result);
  } catch (e) {
    print('Ошибка при расшифровке методом brute force: $e');
  }
}

// Чтение содержимого файла
String readFile(String filePath) {
  try {
    File file = File(filePath);
    return file.readAsStringSync();
  } catch (e) {
    print('Ошибка при чтении файла: $e');
    return '';
  }
}

// Запись в файл
void writeFile(String filePath, String content) {
  try {
    File file = File(filePath);
    file.writeAsStringSync(content);
    print('Файл успешно записан');
  } catch (e) {
    print('Ошибка при записи в файл: $e');
  }
}