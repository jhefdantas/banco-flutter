import 'package:banco/Client.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> createDatabase() {
  return getDatabasesPath().then((dbPath) {
    final String path = join(dbPath, 'openbank.db');
    return openDatabase(path, onCreate: (db, version) {
      db.execute('CREATE TABLE clients('
          'name TEXT, '
          'last_name TEXT, '
          'email TEXT, '
          'password TEXT )');
    }, version: 1);
  });
}

Future<int> save(Client client) {
  return createDatabase().then((db) {
    final Map<String, dynamic> clientMap = Map();
    clientMap['name'] = client.name;
    clientMap['last_name'] = client.lastName;
    clientMap['email'] = client.email;
    clientMap['password'] = client.senha;
    print(client.name);
    print(client.lastName);
    return db.insert('clients', clientMap);


  });
}

Future<List<Client>> findAll() {
  return createDatabase().then((db) {
    return db.query('clients').then((maps) {
      final List<Client> clients = [];
      for (Map<String, dynamic> map in maps) {
        final Client client = Client(
          map['name'],
          map['last_name'],
          map['email'],
          map['password'],
        );
        clients.add(client);
      }
      return clients;
    });
  });
}
