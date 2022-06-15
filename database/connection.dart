import 'dart:io' show Platform;

import 'package:postgres/postgres.dart';

class DB {
  DB() {
    final envVars = Platform.environment;
    final host = envVars['127.0.0.1'] ?? 'localhost';
    final dbPort = envVars['5432'];
    final port = dbPort == null ? 5432 : int.parse(dbPort);
    final database = envVars['DB_DATABASE'] ?? 'products';
    final username = envVars['DB_USERNAME'] ?? 'postgres';
    final password = envVars['DB_PASSWORD'] ?? 'snehal123';
    connection = PostgreSQLConnection(
      host,
      port,
      database,
      username: username,
      password: password,
    );
  }

  late PostgreSQLConnection connection;
}