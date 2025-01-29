// 17. Создание игры с использованием ООП
// Реализуйте классы для небольшой текстовой игры, такие как Player,
// Enemy, Weapon, с полями и методами, описывающими их поведение.

class Player {
  String name;
  int health;

  Player(this.name, this.health);

  void attack(Enemy enemy) {
    print("$name атакует ${enemy.name}!");
    enemy.takeDamage(10);
  }
}

class Enemy {
  String name;
  int health;

  Enemy(this.name, this.health);

  void takeDamage(int damage) {
    health -= damage;
    print("$name получил $damage урона, осталось здоровья: $health");
  }

  void attack(Player player) {
    print("$name атакует ${player.name}!");
    player.health -= 10;
    print("${player.name} получил урон, осталось здоровья: ${player.health}");
  }
}

class Weapon {
  String name;
  int damage;

  Weapon(this.name, this.damage);

  void use(Player player, Enemy enemy) {
    print("${player.name} использует оружие $name.");
    enemy.takeDamage(damage);
  }
}

