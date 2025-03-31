import '../../domain/entities/product.dart';
import '../../domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final List<Product> _products = [];

  @override
  List<Product> getAllProducts() => List.unmodifiable(_products);

  @override
  Product? getProductById(int id) {
    return _products.firstWhere((product) => product.id == id, orElse: () => null as Product);
  }

  @override
  void addProduct(Product product) {
    _products.add(product);
  }

  @override
  void updateProduct(Product updatedProduct) {
    int index = _products.indexWhere((p) => p.id == updatedProduct.id);
    if (index != -1) {
      _products[index] = updatedProduct;
    }
  }

  @override
  void deleteProduct(int id) {
    _products.removeWhere((product) => product.id == id);
  }
}
