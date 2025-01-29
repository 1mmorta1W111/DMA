// 11. Класс "Магазин"
// Реализуйте класс Product с полями name, price, и quantity.
// Создайте класс Store, который содержит список продуктов и методы для добавления, удаления и поиска товаров по имени.

class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);
}

class Store {
  List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
    print("Товар добавлен: ${product.name}");
  }

  void removeProduct(String name) {
    products.removeWhere((product) => product.name == name);
    print("Товар удален: $name");
  }

  void searchProduct(String name) {
    products.where((product) => product.name == name).forEach((product) {
      print("Найден товар: ${product.name}, Цена: ${product.price}, Количество: ${product.quantity}");
    });
  }
}