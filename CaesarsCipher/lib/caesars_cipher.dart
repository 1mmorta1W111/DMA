class CaesarCipher {
  static const String alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

  String encrypt(String text, int shift) {
    shift = shift % alphabet.length;
    return text
        .toUpperCase()
        .split('')
        .map((char) {
      if (alphabet.contains(char)) {
        int newIndex = (alphabet.indexOf(char) + shift) % alphabet.length;
        return alphabet[newIndex];
      }
      return char;
    }).join('');
  }

  String decrypt(String text, int shift) {
    shift = shift % alphabet.length;
    return text
        .toUpperCase()
        .split('')
        .map((char) {
      if (alphabet.contains(char)) {
        int newIndex = (alphabet.indexOf(char) - shift + alphabet.length) % alphabet.length;
        return alphabet[newIndex];
      }
      return char;
    }).join('');
  }
}
