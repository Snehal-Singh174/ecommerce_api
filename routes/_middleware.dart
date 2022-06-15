import 'package:dart_frog/dart_frog.dart';

import '../database/connection.dart';
import '../database/products/dao/products_dao.dart';

Handler middleware(Handler handler) {
  final db = DB();

  return handler
      .use(requestLogger())
      .use(provider<DB>((_) => db))
      .use(provider<ProductsDao>((_) => ProductsDao(db.connection)));
}