import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/User.dart';


class UserController{
  // Instance de la base de données
  Future <Database> _database() async {
    return openDatabase(
      join(await getDatabasesPath(), 'lacagri_formation.db'),
      onCreate: (db, version)  { 
        // Run the CREATE TABLE statement on the database.
        db.execute(
          'CREATE TABLE IF NOT EXISTS user (id INTEGER PRIMARY KEY, score INTEGER)',
        );
      },
      version: 1,
    );
  }

  // Ajouter un utilisateur à la table users
  Future <int> addUser(User user) async {
    final Database db = await _database();
    return await db.insert('user', user.toMap());
  }

  // Récupérer tous les utilisateurs de la table users
  Future<List<User>> getUsers() async {
    final Database db = await _database();
    final List<Map<String, dynamic>> maps = await db.query('user');
    return List.generate(maps.length, (i) {
      return User(
        id: maps[i]['id'],
        score: maps[i]['score'],
      );
    });
  }

  // Récupérer l'utilisateur de la table users
  Future<User> getUser(int id) async {
    final Database db = await _database();
    final List<Map<String, dynamic>> maps = await db.query(
      'user',
      where: 'id = ?',
      whereArgs: [id],
    );
    if (maps.isNotEmpty) {
      return User.fromMap(maps.first);
    } else {
      throw Exception('User not found');
    }
  }

  // Mettre à jour un utilisateur dans la table users
  Future<int> updateUser(User user) async {
    final Database db = await _database();
    return await db.update(
      'user',
      user.toMap(),
      where: 'id = ?',
      whereArgs: [user.id],
    );
  }

  // Future<int> updateUser(int id, int score) async {
  //   final Database db = await _database();
  //   return await db.update(
  //     'user',
  //     {'score': score},
  //     where: 'id = ?',
  //     whereArgs: [id],
  //   );
  // }

  Future<User> ensureUserExists(int id) async {
    final Database db = await _database();
    final List<Map<String, dynamic>> maps = await db.query(
      'user',
      where: 'id = ?',
      whereArgs: [id],
    );
    if (maps.isNotEmpty) {
      // L'utilisateur existe déjà, renvoyer l'instance de l'utilisateur
      return User.fromMap(maps.first);
    } else {
      // L'utilisateur n'existe pas, insérer une nouvelle ligne et renvoyer l'instance de l'utilisateur
      await db.insert(
        'user',
        {'id': id, 'score': 0},
        conflictAlgorithm: ConflictAlgorithm.ignore,
      );
      return User(id: id, score: 0);
    }
  }

  // Supprimer un utilisateur de la table users
  Future<int> deleteUser(int id) async {
    final Database db = await _database();
    return await db.delete(
      'user',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Ajouter une liste de chapterss à la table chapters
  

  // Récupérer tous les chapterss de la table chapters
  
}