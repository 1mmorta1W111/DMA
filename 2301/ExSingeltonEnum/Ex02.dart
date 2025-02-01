// Задача 2.
// Логирование в системе:
// Создайте класс для системы логирования, который реализует паттерн Singleton. Класс должен сохранять все сообщения логов в список и предоставлять метод для их вывода.
// Требования:
// Класс должен быть Singleton.
// Реализуйте метод для добавления сообщений в логи.
// Реализуйте метод для вывода всех логов.

class Logger {
  static final Logger _instance = Logger._internal();
  final List<String> _logs = [];

  factory Logger() {
    return _instance;
  }

  Logger._internal();

  void log(String message) {
    _logs.add(message);
    print("Лог добавлен: $message");
  }

  void showLogs() {
    print("Все логи:");
    for (var log in _logs) {
      print(log);
    }
  }
}

void main() {
  var logger1 = Logger();
  var logger2 = Logger();

  logger1.log("Запуск системы");
  logger2.log("Ошибка: база данных недоступна");
  logger1.log("Переподключение...");

  logger1.showLogs();

  print(identical(logger1, logger2)); // true (оба объекта одинаковые)
}
