import '../../database/products/entity/products_entity.dart';

class ProductsIdResponse {
  ProductsIdResponse(this.products,this.id);

  final List<ProductEntity> products;
  final String id;

  ProductEntity toJson() => products[int.parse(id)-1];
}