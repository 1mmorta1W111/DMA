// 12. Расчет времени до заданной даты
// Задача: Создайте метод, который принимает дату и время события и рассчитывает,
// сколько часов, минут и секунд осталось до него от текущего момента.

void timeUntilEvent(DateTime eventDateTime) {
  DateTime now = DateTime.now();

  if (eventDateTime.isBefore(now)) {
    print('Событие уже прошло');
    return;
  }

  Duration difference = eventDateTime.difference(now);

  int hours = difference.inHours;
  int minutes = difference.inMinutes.remainder(60);
  int seconds = difference.inSeconds.remainder(60);

  print('До события осталось: $hours часов, $minutes минут, $seconds секунд');
}

void main() {
  DateTime eventTime = DateTime(2025, 2, 5, 18, 30, 0);
  timeUntilEvent(eventTime);
}