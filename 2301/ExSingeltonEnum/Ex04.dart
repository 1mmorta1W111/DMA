// Задача 4.
// Сезоны года:
// Создайте Enum, представляющий времена года: WINTER, SPRING, SUMMER, AUTUMN. Затем реализуйте функцию, которая принимает значение этого Enum и возвращает соответствующее название сезона на русском языке.
//
// Требования:
//
// Определите Enum для сезонов.
// Реализуйте метод, который принимает сезон и возвращает строку с его названием.

enum Season { WINTER, SPRING, SUMMER, AUTUMN }

String getSeasonName(Season season) {
  switch (season) {
    case Season.WINTER:
      return "Зима";
    case Season.SPRING:
      return "Весна";
    case Season.SUMMER:
      return "Лето";
    case Season.AUTUMN:
      return "Осень";
  }
}

void main() {
  print(getSeasonName(Season.WINTER));
  print(getSeasonName(Season.SPRING));
  print(getSeasonName(Season.SUMMER));
  print(getSeasonName(Season.AUTUMN));
}