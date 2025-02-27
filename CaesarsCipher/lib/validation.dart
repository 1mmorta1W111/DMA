import 'dart:io';
import 'caesars_cipher.dart';

bool validateFile(String filePath) {
  if (File(filePath).existsSync()) {
    return true;
  }
  print('Файл не найден: $filePath');
  return false;
}

bool validateKey(int shift) {
  if (shift >= 0 && shift < CaesarCipher.alphabet.length) {
    return true;
  }
  print('Ключ должен быть в пределах от 0 до ${CaesarCipher.alphabet.length - 1}');
  return false;
}