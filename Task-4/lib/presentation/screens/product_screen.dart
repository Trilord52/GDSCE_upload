import 'package:flutter/material.dart';
import '../../domain/entities/product.dart';
import '../../data/repositories/product_repository_impl.dart';
import '../../domain/usecases/view_all_products_usecase.dart';
import '../../domain/usecases/create_product_usecase.dart';
import '../../domain/usecases/update_product_usecase.dart';
import '../../domain/usecases/delete_product_usecase.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final ProductRepositoryImpl repository = ProductRepositoryImpl();
  late final ViewAllProductsUsecase viewAllProductsUsecase;
  late final CreateProductUsecase createProductUsecase;
  late final UpdateProductUsecase updateProductUsecase;
  late final DeleteProductUsecase deleteProductUsecase;

  @override
  void initState() {
    super.initState();
    viewAllProductsUsecase = ViewAllProductsUsecase(repository);
    createProductUsecase = CreateProductUsecase(repository);
    updateProductUsecase = UpdateProductUsecase(repository);
    deleteProductUsecase = DeleteProductUsecase(repository);

    createProductUsecase(Product(id: 1, name: "Laptop", description: "Gaming Laptop", imageUrl: "https://example.com/laptop.jpg", price: 1200));
    createProductUsecase(Product(id: 2, name: "Phone", description: "Smartphone", imageUrl: "https://example.com/phone.jpg", price: 800));
  }

  @override
  Widget build(BuildContext context) {
    List<Product> products = viewAllProductsUsecase();

    return Scaffold(
      appBar: AppBar(title: Text("Products")),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text(product.description),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit, color: Colors.blue),
                  onPressed: () {
                    updateProductUsecase(Product(
                      id: product.id,
                      name: product.name + " (Updated)",
                      description: product.description,
                      imageUrl: product.imageUrl,
                      price: product.price,
                    ));
                    setState(() {});
                  },
                ),
                IconButton(
                  icon: Icon(Icons.delete, color: Colors.red),
                  onPressed: () {
                    deleteProductUsecase(product.id);
                    setState(() {});
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
