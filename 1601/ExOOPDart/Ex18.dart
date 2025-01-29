// 18. Автоматизированная система заказов
// Создайте классы Order, Customer, и Product.
// Реализуйте систему, где можно добавлять заказы, отображать общую стоимость заказа и просматривать историю заказов.

class Product {
  String name;
  double price;

  Product(this.name, this.price);
}

class Order {
  List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
  }

  double getTotal() {
    double total = 0;
    for (var product in products) {
      total += product.price;
    }
    return total;
  }
}

class Customer {
  String name;
  List<Order> orderHistory = [];

  Customer(this.name);

  void addOrder(Order order) {
    orderHistory.add(order);
  }

  void showOrderHistory() {
    for (var order in orderHistory) {
      print("Заказ: ");
      for (var product in order.products) {
        print("${product.name}: \$${product.price}");
      }
      print("Общая стоимость: \$${order.getTotal()}");
    }
  }
}