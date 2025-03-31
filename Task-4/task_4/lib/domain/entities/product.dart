class Product {
  final int id;
  final String name;
  final String description;
  final String imageUrl;
  final double price;
  bool isCompleted;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
    this.isCompleted = false,
  });

  Product copyWith({
    int? id,
    String? name,
    String? description,
    String? imageUrl,
    double? price,
    bool? isCompleted,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      price: price ?? this.price,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}
