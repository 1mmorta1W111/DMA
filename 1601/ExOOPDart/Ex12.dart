// 12. Интерфейс "Платежная система"
// Создайте интерфейс PaymentSystem с методами pay() и refund().
// Реализуйте классы CreditCard и PayPal, которые реализуют этот интерфейс.

abstract class PaymentSystem {
  void pay(double amount);
  void refund(double amount);
}

class CreditCard implements PaymentSystem {
  @override
  void pay(double amount) {
    print("Платеж через кредитную карту: $amount");
  }

  @override
  void refund(double amount) {
    print("Возврат через кредитную карту: $amount");
  }
}

class PayPal implements PaymentSystem {
  @override
  void pay(double amount) {
    print("Платеж через PayPal: $amount");
  }

  @override
  void refund(double amount) {
    print("Возврат через PayPal: $amount");
  }
}
