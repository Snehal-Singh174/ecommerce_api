class ProductEntity {
  const ProductEntity({
    required this.productId,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rate, // e.g. popular
    required this.rateCount,
  });

  factory ProductEntity.fromJson(Map<String, dynamic> json) => ProductEntity(
    productId: json['productid'] as num,
    title: json['title'] as String,
    price: json['price'] as num,
    description: json['description'] as String,
    category: json['category'] as String?,
    image: json['logoUrl'] as String?,
    rate: json['rate'] as num?,
    rateCount: json['ratecount'] as num?,
  );

  final num productId;
  final String title;
  final num price;
  final String description;
  final String? category;
  final String? image;
  final num? rate;
  final num? rateCount;

  Map<String, dynamic> toJson() => <String, dynamic>{
    'productid': productId,
    'title': title,
    'price': price,
    'description': description,
    'category': category,
    'image': image,
    'rate': rate,
    'ratecount': rateCount
  };
}