class ProductsResponse {
  ProductsResponse(this.products);

  final List<Map<String, dynamic>> products;

  Map<String, dynamic> toJson() => <String, dynamic>{'products': products};
}

