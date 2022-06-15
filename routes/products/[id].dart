import 'package:dart_frog/dart_frog.dart';
import '../../database/products/dao/products_dao.dart';
import '../../database/products/entity/products_entity.dart';
import '../../model/products/products_id_response.dart';
import '../../model/products/products_response.dart';

Future<Response> onRequest(RequestContext context, String id) async{
  final productsDao = context.read<ProductsDao>();
  await productsDao.connection.open();
  var products = <ProductEntity>[];
  products = await productsDao.getAll();
  await productsDao.connection.close();

  return Response.json(
    body: ProductsIdResponse(products,id).toJson(),
  );

}