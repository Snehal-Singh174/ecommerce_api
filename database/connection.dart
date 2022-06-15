import 'dart:io' show Platform;

import 'package:postgres/postgres.dart';

class DB {
  DB() {
    final envVars = Platform.environment;
    final host = envVars['DB_HOST'] ?? 'localhost';
    final dbPort = envVars['5432'];
    final port = dbPort == null ? 5432 : int.parse(dbPort);
    final database = envVars['DB_DATABASE'] ?? 'database';
    final username = envVars['DB_USERNAME'] ?? 'username';
    final password = envVars['DB_PASSWORD'] ?? 'password';
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
