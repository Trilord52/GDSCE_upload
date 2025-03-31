class Product {
  String _name;
  String _description;
  double _price;
  bool _isCompleted;

  Product(this._name, this._description, this._price, {bool isCompleted = false}) : _isCompleted = isCompleted;

  String get name => _name;
  String get description => _description;
  double get price => _price;
  bool get isCompleted => _isCompleted;

  set name(String name) => _name = name;
  set description(String description) => _description = description;
  set price(double price) => _price = price;
  set isCompleted(bool completed) => _isCompleted = completed;
}

class ProductManager {
  final List<Product> _products = [];

  List<Product> get products => List.unmodifiable(_products);
  List<Product> get completedProducts => _products.where((p) => p.isCompleted).toList();
  List<Product> get pendingProducts => _products.where((p) => !p.isCompleted).toList();

  void addProduct(String name, String description, double price) {
    _products.add(Product(name, description, price));
    print("Product added: $name");
  }

  void editProduct(int id, String name, String description, double price) {
    if (id >= 0 && id < _products.length) {
      _products[id].name = name;
      _products[id].description = description;
      _products[id].price = price;
      print("Product updated: $name");
    } else {
      print("Invalid product ID");
    }
  }

  void deleteProduct(int id) {
    if (id >= 0 && id < _products.length) {
      print("Product deleted: ${_products[id].name}");
      _products.removeAt(id);
    } else {
      print("Invalid product ID");
    }
  }

  void markCompleted(int id) {
    if (id >= 0 && id < _products.length) {
      _products[id].isCompleted = true;
      print("Product marked as completed: ${_products[id].name}");
    } else {
      print("Invalid product ID");
    }
  }

  void viewAllProducts() {
    if (_products.isEmpty) {
      print("No products available.");
    } else {
      print("Products:");
      for (var product in _products) {
        print("${product.name} - ${product.description} - \$${product.price.toStringAsFixed(2)} - ${product.isCompleted ? 'Completed' : 'Pending'}");
      }
    }
  }
}

void main() {
  final productManager = ProductManager();
  productManager.addProduct("Apples", "Fresh red apples", 30);
  productManager.addProduct("Bananas", "Ripe bananas", 60);
  productManager.addProduct("Carrots", "Organic carrots", 29);
  productManager.addProduct("Milk", "1 gallon of whole milk", 39);
  productManager.addProduct("Bread", "Whole wheat bread", 24);
  productManager.viewAllProducts();
  productManager.editProduct(0, "Apples", "Fresh green apples", 49);
  productManager.markCompleted(2);
  productManager.viewAllProducts();
  productManager.deleteProduct(1);
  productManager.viewAllProducts();
}
