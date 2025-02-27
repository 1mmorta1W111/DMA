import 'dart:io';
import 'caesars_cipher.dart';

void encryptFile(String inputFile, String outputFile, int shift) {
  try {
    String text = readFile(inputFile);
    CaesarCipher cipher = CaesarCipher();
    String encryptedText = cipher.encrypt(text, shift);
    writeFile(outputFile, encryptedText);
  } catch (e) {
    print('Ошибка при шифровании файла: $e');
  }
}

void decryptFile(String inputFile, String outputFile, int shift) {
  try {
    String text = readFile(inputFile);
    CaesarCipher cipher = CaesarCipher();
    String decryptedText = cipher.decrypt(text, shift);
    writeFile(outputFile, decryptedText);
  } catch (e) {
    print('Ошибка при расшифровке файла: $e');
  }
}

void bruteForceDecrypt(String inputFile, String outputFile) {
  try {
    String text = readFile(inputFile);
    CaesarCipher cipher = CaesarCipher();

    String result = '';
    for (int shift = 0; shift < CaesarCipher.alphabet.length; shift++) {
      String decryptedText = cipher.decrypt(text, shift);
      result += 'Сдвиг $shift: \n$decryptedText\n\n';
    }

    writeFile(outputFile, result);
  } catch (e) {
    print('Ошибка при расшифровке методом brute force: $e');
  }
}

String readFile(String filePath) {
  try {
    File file = File(filePath);
    return file.readAsStringSync();
  } catch (e) {
    print('Ошибка при чтении файла: $e');
    return '';
  }
}

void writeFile(String filePath, String content) {
  try {
    File file = File(filePath);
    file.writeAsStringSync(content);
    print('Файл успешно записан');
  } catch (e) {
    print('Ошибка при записи в файл: $e');
  }
}