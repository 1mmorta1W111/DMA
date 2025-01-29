// 6. Инкапсуляция: Банк
// Создайте класс BankAccount с полями accountNumber, balance, и методами для пополнения и снятия средств. Обеспечьте инкапсуляцию для безопасности данных счета.

class BankAccount {
  String _accountNumber;
  double _balance;

  BankAccount(this._accountNumber, this._balance);

  double get balance => _balance;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Пополнение на $amount. Баланс: $_balance");
    } else {
      print("Сумма пополнения должна быть положительной.");
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && _balance >= amount) {
      _balance -= amount;
      print("Снятие $amount. Баланс: $_balance");
    } else if (amount <= 0) {
      print("Сумма снятия должна быть положительной.");
    } else {
      print("Недостаточно средств.");
    }
  }
}