import 'package:dart_frog/dart_frog.dart';

import '../../database/products/dao/products_dao.dart';
import '../../database/products/entity/products_entity.dart';
import '../../model/products/products_response.dart';


Future<Response> onRequest(RequestContext context) async {

  final productsDao = context.read<ProductsDao>();
  await productsDao.connection.open();
  var products = <ProductEntity>[];
    products = await productsDao.getAll();
  await productsDao.connection.close();

  ///For productList in mapOf "products"
  return Response.json(
    body: ProductsResponse(
      products.map((e) => e.toJson()).toList(),
    ).toJson(),
  );

  ///For productList
  /*return Response.json(
    body: products,
  );*/
}