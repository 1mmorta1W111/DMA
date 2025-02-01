// 6. Расчет времени выполнения метода
// Задача: Реализуйте метод, который измеряет время выполнения другого метода (например, цикла из 1 миллиона итераций).

void measureExecutionTime(Function function) {
  Stopwatch stopwatch = Stopwatch()..start();
  function();
  stopwatch.stop();

  print("Время выполнения: ${stopwatch.elapsedMilliseconds} миллисекунд.");
}

void exampleTask() {
  int sum = 0;
  for (int i = 0; i < 1000000; i++) {
    sum += i;
  }
}

void main() {
  measureExecutionTime(exampleTask);
}