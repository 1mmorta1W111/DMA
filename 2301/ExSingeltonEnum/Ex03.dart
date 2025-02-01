// Enum
// Задача 3.
// Реализация статусов заказа:
// Создайте Enum для статусов заказа в интернет-магазине: NEW, IN_PROGRESS, DELIVERED, CANCELLED. Реализуйте класс Order, который будет хранить информацию о заказе и текущем статусе, а также методы для смены статуса.
//
// Требования:
//
// Определите Enum для статусов заказа.
// Реализуйте методы в классе Order для изменения и отображения статуса заказа.
// Реализуйте логику проверки переходов статусов, чтобы нельзя было отменить доставленный заказ.

enum OrderStatus { NEW, IN_PROGRESS, DELIVERED, CANCELLED }

class Order {
  final int id;
  OrderStatus _status = OrderStatus.NEW;

  Order(this.id);

  void updateStatus(OrderStatus newStatus) {
    if (_status == OrderStatus.DELIVERED) {
      print("Нельзя изменить статус: заказ уже доставлен.");
      return;
    }
    if (_status == OrderStatus.CANCELLED) {
      print("Нельзя изменить статус: заказ отменен.");
      return;
    }

    if ((_status == OrderStatus.NEW && newStatus == OrderStatus.IN_PROGRESS) ||
        (_status == OrderStatus.IN_PROGRESS && newStatus == OrderStatus.DELIVERED) ||
        (_status == OrderStatus.NEW && newStatus == OrderStatus.CANCELLED)) {
      _status = newStatus;
      print("Статус заказа #$id изменен на ${_status.name}");
    } else {
      print("Недопустимый переход статуса: ${_status.name} ➝ ${newStatus.name}");
    }
  }

  void showStatus() {
    print("Заказ #$id: текущий статус — ${_status.name}");
  }
}

void main() {
  var order1 = Order(101);

  order1.showStatus();
  order1.updateStatus(OrderStatus.IN_PROGRESS);
  order1.updateStatus(OrderStatus.DELIVERED);
  order1.updateStatus(OrderStatus.CANCELLED);
  order1.showStatus();
}
