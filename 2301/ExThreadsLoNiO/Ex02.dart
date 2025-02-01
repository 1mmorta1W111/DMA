// Задание 2: Реализация паттерна Декоратор
// Задача: Реализуйте паттерн Декоратор для обработки текста. Напишите набор классов, которые будут декорировать строку:
//
// Основной интерфейс TextProcessor, содержащий метод process(String text).
// Реализуйте класс SimpleTextProcessor, который просто возвращает текст без изменений.
// Реализуйте декораторы:
// UpperCaseDecorator — преобразует текст в верхний регистр.
// TrimDecorator — удаляет пробелы в начале и конце строки.
// ReplaceDecorator — заменяет все пробелы символом подчеркивания (_).
// Условия:
//
// Продемонстрируйте работу декораторов, комбинируя их.
// Пример использования: оберните текст в несколько декораторов и вызовите process.

abstract class TextProcessor {
  String process(String text);
}

class SimpleTextProcessor implements TextProcessor {
  @override
  String process(String text) => text;
}

abstract class TextDecorator implements TextProcessor {
  final TextProcessor wrappee;

  TextDecorator(this.wrappee);

  @override
  String process(String text) => wrappee.process(text);
}

class UpperCaseDecorator extends TextDecorator {
  UpperCaseDecorator(TextProcessor wrappee) : super(wrappee);

  @override
  String process(String text) => super.process(text).toUpperCase();
}

class TrimDecorator extends TextDecorator {
  TrimDecorator(TextProcessor wrappee) : super(wrappee);

  @override
  String process(String text) => super.process(text).trim();
}

class ReplaceDecorator extends TextDecorator {
  ReplaceDecorator(TextProcessor wrappee) : super(wrappee);

  @override
  String process(String text) => super.process(text).replaceAll(' ', '_');
}

void main() {
  TextProcessor processor = SimpleTextProcessor();

  processor = UpperCaseDecorator(processor);
  print(processor.process("  Привет, мир!  "));

  processor = TrimDecorator(processor);
  print(processor.process("  Привет, мир!  "));

  processor = ReplaceDecorator(processor);
  print(processor.process("  Привет, мир!  "));
}
